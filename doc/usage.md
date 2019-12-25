path: tree/master
source: lib/

# Usage

## Dart
This library provides constants for the version numbers of the available [Bootstrap](https://getbootstrap.com) and [jQuery](https://jquery.com) libraries:

```dart
import 'package:bootstrap_bundle/bootstrap_bundle.dart';

/// Prints the version numbers of the available libraries.
void main() {
  print('Bootstrap: $bootstrapVersion'); // "4.4.1"
  print('Bootstrap Icons: $bootstrapIconsVersion'); // "1.0.0-alpha2"
  print('jQuery: $jQueryVersion'); // "3.4.1"
}
```

## Bootstrap ![v4.4.1](https://img.shields.io/badge/version-4.4.1-blue.svg)
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

It also provides the [Sass](https://sass-lang.com) files:

```scss
// All features.
@import 'package:bootstrap_bundle/scss';

// Specific features.
@import 'package:bootstrap_bundle/scss/functions';
@import 'package:bootstrap_bundle/scss/variables';
@import 'package:bootstrap_bundle/scss/mixins';

// For the full list of supported features, see:
// https://github.com/cedx/bootstrap.dart/tree/master/lib/scss
```

!!! warning
    You must use a dedicated build step to compile the Sass files
    by using [`sass`](https://pub.dev/packages/sass)
    or [`sass_builder`](https://pub.dev/packages/sass_builder) package. 

## Bootstrap Icons ![v1.0.0-alpha2](https://img.shields.io/badge/version-1.0.0--alpha-blue.svg)
This library provides the SVG images from [Bootstrap Icons](https://icons.getbootstrap.com) redistributable:

```html
<img alt="" src="packages/bootstrap_bundle/icons/bootstrap.svg">
<img alt="" src="packages/bootstrap_bundle/icons/bootstrap-fill.svg">
```

## jQuery ![v3.4.1](https://img.shields.io/badge/version-3.4.1-blue.svg)
This library provides the scripts from [jQuery](https://jquery.com) redistributable:

```html
<!-- Plain scripts -->
<script src="packages/bootstrap_bundle/js/jquery.js"></script>
<script src="packages/bootstrap_bundle/js/jquery.slim.js"></script>

<!-- Minified scripts -->
<script src="packages/bootstrap_bundle/js/jquery.min.js"></script>
<script src="packages/bootstrap_bundle/js/jquery.slim.min.js"></script>
```
