# Usage

## Dart
This library provides constants for the versions numbers of the available [Bootstrap](https://getbootstrap.com) and [jQuery](https://jquery.com) libraries:

```dart
import 'package:bootstrap_bundle/bootstrap_bundle.dart';

/// Prints the version numbers of the available libraries.
void main() {
  print('Bootstrap: $bootstrapVersion'); // "4.3.1"
  print('jQuery: $jQueryVersion'); // "3.3.1"
}
```

## Sass
This library provides the [Sass](https://sass-lang.com) files from [Bootstrap](https://getbootstrap.com) redistributable:

```scss
// All features.
@import 'package:bootstrap_bundle/scss';

// Specific features.
@import 'package:bootstrap_bundle/scss/functions';
@import 'package:bootstrap_bundle/scss/variables';
@import 'package:bootstrap_bundle/scss/mixins';
```

!!! warning
    You must use a dedicated build step to compile the Sass files
    by using [`sass`](https://pub.dartlang.org/packages/sass)
    or [`sass_builder`](https://pub.dartlang.org/packages/sass_builder) package. 

## Bootstrap ![v4.3.1](https://img.shields.io/badge/version-4.3.1-blue.svg)
This library provides the stylesheets and scripts from [Bootstrap](https://getbootstrap.com) redistributable:

```html
<!-- Plain stylesheets -->
<link rel="stylesheet" href="packages/bootstrap_bundle/css/bootstrap.css">
<link rel="stylesheet" href="packages/bootstrap_bundle/css/bootstrap-grid.css">
<link rel="stylesheet" href="packages/bootstrap_bundle/css/bootstrap-reboot.css">

<!-- Minified stylesheets -->
<link rel="stylesheet" href="packages/bootstrap_bundle/css/bootstrap.min.css">
<link rel="stylesheet" href="packages/bootstrap_bundle/css/bootstrap-grid.min.css">
<link rel="stylesheet" href="packages/bootstrap_bundle/css/bootstrap-reboot.min.css">

<!-- Plain scripts -->
<script src="packages/bootstrap_bundle/js/bootstrap.js"></script>
<script src="packages/bootstrap_bundle/js/bootstrap.bundle.js"></script>

<!-- Minified scripts -->
<script src="packages/bootstrap_bundle/js/bootstrap.min.js"></script>
<script src="packages/bootstrap_bundle/js/bootstrap.bundle.min.js"></script>
```

## jQuery ![v3.3.1](https://img.shields.io/badge/version-3.3.1-blue.svg)
This library provides the scripts from [jQuery](https://jquery.com) redistributable:

```html
<!-- Plain scripts -->
<script src="packages/bootstrap_bundle/js/jquery.js"></script>
<script src="packages/bootstrap_bundle/js/jquery.slim.js"></script>

<!-- Minified scripts -->
<script src="packages/bootstrap_bundle/js/jquery.min.js"></script>
<script src="packages/bootstrap_bundle/js/jquery.slim.min.js"></script>
```
