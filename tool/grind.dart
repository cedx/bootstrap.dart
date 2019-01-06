import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as p;
import 'package:sass/sass.dart' as sass;

/// Starts the build system.
Future<void> main(List<String> args) => grind(args);

@DefaultTask('Builds the project')
Future<void> build() async {
  for (final file in ['bootstrap.scss', 'bootstrap-grid.scss', 'bootstrap-reboot.scss']) {
    final input = p.join(libDir.path, 'scss', file);
    final output = p.join(libDir.path, 'css', p.basenameWithoutExtension(file));
    await getFile('$output.css').writeAsString(sass.compile(input, style: sass.OutputStyle.expanded));
    await getFile('$output.min.css').writeAsString(sass.compile(input, style: sass.OutputStyle.compressed));
  }
}

@Task('Deletes all generated files and reset any saved state')
void clean() {
  defaultClean();
  ['.dart_tool/build', 'doc/api', webDir.path].map(getDir).forEach(delete);
  FileSet.fromDir(getDir('var'), pattern: '!.*', recurse: true).files.forEach(delete);
}

@Task('Builds the documentation')
Future<void> doc() async {
  await getFile('CHANGELOG.md').copy('doc/about/changelog.md');
  await getFile('LICENSE.md').copy('doc/about/license.md');
  DartDoc.doc();
  run('mkdocs', arguments: ['build']);
}

@Task('Fixes the coding standards issues')
void fix() => DartFmt.format(existingSourceDirs, lineLength: 200);

@Task('Performs the static analysis of source code')
void lint() => Analyzer.analyze(existingSourceDirs);

@Task('Upgrades the project to the latest revision')
void upgrade() {
  run('git', arguments: ['reset', '--hard']);
  run('git', arguments: ['fetch', '--all', '--prune']);
  run('git', arguments: ['pull', '--rebase']);
  Pub.upgrade();
}
