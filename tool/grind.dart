import 'package:grinder/grinder.dart';

/// Starts the build system.
Future<void> main(List<String> args) => grind(args);

@DefaultTask('Builds the project')
Future<void> build() => joinFile(libDir, ['scss', 'bootstrap.scss']).copy(joinFile(libDir, ['scss', '_index.scss']).path);

@Task('Deletes all generated files and reset any saved state')
void clean() {
  defaultClean();
  delete(getFile('var/lcov.info'));
  ['.dart_tool/build', 'var/test', webDir.path].map(getDir).forEach(delete);
}

@Task('Builds the documentation')
Future<void> doc() async {
  for (final path in ['CHANGELOG.md', 'LICENSE.md']) await getFile(path).copy('doc/about/${path.toLowerCase()}');
  run('mkdocs', arguments: ['build', '--config-file=doc/mkdocs.yaml']);
  ['doc/about/changelog.md', 'doc/about/license.md', '${webDir.path}/mkdocs.yaml'].map(getFile).forEach(delete);
}

@Task('Fixes the coding standards issues')
void fix() => DartFmt.format(existingSourceDirs);

@Task('Performs the static analysis of source code')
void lint() => Analyzer.analyze(existingSourceDirs);

@Task('Publishes the package to the registry')
@Depends(clean, fix)
void publish() => run('pub', arguments: ['publish', '--force'], runOptions: RunOptions(runInShell: true));

@Task('Upgrades the project to the latest revision')
void upgrade() {
  run('git', arguments: ['reset', '--hard']);
  run('git', arguments: ['fetch', '--all', '--prune']);
  run('git', arguments: ['pull', '--rebase']);
  Pub.upgrade();
}
