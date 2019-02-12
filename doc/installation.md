# Installation

## Requirements
Before installing **Bootstrap Bundle for Dart**, you need to make sure you have the [Dart SDK](https://www.dartlang.org/tools/sdk)
and [Pub](https://www.dartlang.org/tools/pub), the Dart package manager, up and running.

!!! warning
    Bootstrap Bundle for Dart requires Dart >= **2.1.0**.

You can verify if you're already good to go with the following commands:

```shell
dart --version
# Dart VM version: 2.1.0 (Unknown timestamp) on "linux_x64"

pub --version
# Pub 2.1.0
```

!!! info
    If you plan to play with the package sources, you will also need
    [Grinder](https://google.github.io/grinder.dart) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material).

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
pub get
```

### 3. Import it
Now in your [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) code, you can use:

```html
<link href="packages/bootstrap_bundle/css/bootstrap.min.css" rel="stylesheet">
<script src="packages/bootstrap_bundle/js/jquery.slim.min.js"></script>
<script src="packages/bootstrap_bundle/js/bootstrap.bundle.min.js"></script>
```

Or in your [Sass](https://sass-lang.com) code, you can use:

```scss
@import 'package:bootstrap_bundle/scss';
```
