path: src/branch/master
source: lib/

# Usage

## Dart
This library provides constants for the version numbers of the available [Bootstrap](https://getbootstrap.com) and [jQuery](https://jquery.com) libraries:

```dart
import 'package:bootstrap_bundle/bootstrap_bundle.dart';

/// Prints the version numbers of the available libraries.
void main() {
  print('Bootstrap: $bootstrapVersion'); // "4.4.1"
  print('Bootstrap Icons: $bootstrapIconsVersion'); // "1.0.0-alpha3"
  print('jQuery: $jQueryVersion'); // "3.5.0"
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
// All Bootstrap features.
@import 'package:bootstrap_bundle/scss';

// Specific features.
@import 'package:bootstrap_bundle/scss/functions';
@import 'package:bootstrap_bundle/scss/variables';
@import 'package:bootstrap_bundle/scss/mixins';
@import 'package:bootstrap_bundle/scss/reboot';
```

!!! tip
    For the full list of supported features, see the [content of the `lib/scss` folder](https://git.belin.io/cedx/bootstrap.dart/src/branch/master/lib/scss).

!!! warning
    When consuming the [Sass](https://sass-lang.com) files, you must use a dedicated build step to compile these files to [CSS](https://www.w3.org/Style/CSS) by using the [`sass`](https://pub.dev/packages/sass) or [`sass_builder`](https://pub.dev/packages/sass_builder) package.

## Bootstrap Icons ![v1.0.0-alpha3](https://img.shields.io/badge/version-1.0.0--alpha3-blue.svg)
This library provides the SVG images from [Bootstrap Icons](https://icons.getbootstrap.com) redistributable:

```html
<img alt="" src="packages/bootstrap_bundle/icons/bootstrap.svg">
<img alt="" src="packages/bootstrap_bundle/icons/bootstrap-fill.svg">
```

## jQuery ![v3.5.0](https://img.shields.io/badge/version-3.5.0-blue.svg)
This library provides the scripts from [jQuery](https://jquery.com) redistributable:

```html
<!-- Plain scripts -->
<script src="packages/bootstrap_bundle/js/jquery.js"></script>
<script src="packages/bootstrap_bundle/js/jquery.slim.js"></script>

<!-- Minified scripts -->
<script src="packages/bootstrap_bundle/js/jquery.min.js"></script>
<script src="packages/bootstrap_bundle/js/jquery.slim.min.js"></script>
```
