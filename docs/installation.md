# Installation

## Requirements
Before installing **Bootstrap Bundle for Dart**, you need to make sure you have the [Dart SDK](https://dart.dev/tools/sdk).
You can verify if you're already good to go with the following command:

```shell
dart --version
# Dart SDK version: 2.10.5 (stable) (Tue Jan 19 13:05:37 2021 +0100) on "windows_x64"
```

?> If you plan to play with the package sources, you will also need [PowerShell](https://docs.microsoft.com/en-us/powershell).

## Installing with Pub package manager

### 1. Depend on it
Add this to your project's `pubspec.yaml` file:

```yaml
# Required
dependencies:
	bootstrap_bundle: *
	
# Optional
dev_dependencies:
	sass_builder: *
```

### 2. Install it
Install this package and its dependencies from a command prompt:

```shell
dart pub get
```

### 3. Import it
Now in your [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) code, you can use:

```html
<!-- Bootstrap -->
<link href="packages/bootstrap_bundle/css/bootstrap.min.css" rel="stylesheet">
<script src="packages/bootstrap_bundle/js/jquery.slim.min.js"></script>
<script src="packages/bootstrap_bundle/js/bootstrap.bundle.min.js"></script>

<!-- Bootstrap Icons -->
<img alt="" src="packages/bootstrap_bundle/icons/bootstrap.svg">
<img alt="" src="packages/bootstrap_bundle/icons/bootstrap-fill.svg">
```

Or in your [Sass](https://sass-lang.com) code, you can use:

```scss
@import "package:bootstrap_bundle/scss";
```
