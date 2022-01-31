# Libadwaita ❤️ Flutter

![CI](https://github.com/gtk-flutter/libadwaita/actions/workflows/ci.yml/badge.svg)
[![GitHub Super-Linter](https://github.com/gtk-flutter/adwaita/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

[![Pub.dev](https://img.shields.io/pub/v/libadwaita.svg)](https://pub.dev/packages/libadwaita)
[![License](https://img.shields.io/github/license/gtk-flutter/libadwaita?color=indigo)](LICENSE)
[![Maintainer](https://img.shields.io/badge/Maintainer-prateekmedia-informational)](https://github.com/prateekmedia)

Libadwaita's widgets for Flutter. Following Gnome HIG and available on all platforms.

![libadwaita example screenshot](https://user-images.githubusercontent.com/41370460/146646064-09e10e32-8635-43ed-bd9c-0ed191d30a97.png)

**NOTE:** For getting colors from gtk 3.0 theme use version [`<=0.9.8+1`](https://pub.dev/packages/gtk/versions/0.9.8+1)

## Features

- Various Libadwaita widgets ported to flutter
- Some new widgets are also available, Check example for more info
- Compatible with [various packages](#additional-information)

## Usage

- This only provides widgets, for theming you should consider [adwaita](https://pub.dev/packages/adwaita) or [yaru](https://github.com/ubuntu/yaru.dart) package.
- If you want custom titlebar then you can follow the steps for that on [`bitsdojo_window`](https://pub.dev/packages/bitsdojo_window) package.
- Here is the list of widgets imported from libadwaita library : [widgets.dart](https://github.com/gtk-flutter/libadwaita/blob/main/lib/src/widgets/widgets.dart).

See the example app in the `example` folder for more info.

## Documentation

### AdwHeaderBar
There are 6 types of `AdwHeaderBar` constructor:

If you want to use default adwaita style window icons or icons using window_decorations package then you have to use any one of the following HeaderBar's:
| Widget | Docs |
| ------ | ---- |
| `AdwHeaderBar` | Default HeaderBar |
| `AdwHeaderBar.bitsdojo` | HeaderBar to be used with [`bitsdojo`](#bitsdojo_window) package |
| `AdwHeaderBar.nativeshell` | HeaderBar to be used with [`nativeshell`](#nativeshell) package |

If you want to have a custom icon for window button then you have to use any one of the following HeaderBar's:
| Widget | Docs |
| ------ | ---- |
| `AdwHeaderBar.custom` | HeaderBar with custom icon |
| `AdwHeaderBar.customBitsdojo` | HeaderBar to be used with [`bitsdojo`](#bitsdojo_window) package with custom icon |
| `AdwHeaderBar.customNativeshell` | HeaderBar to be used with [`nativeshell`](#nativeshell) package with custom icon |

## Relavant Links
- [libadwaita documentation](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/index.html#classes)


## Additional information

### **This package works great with**

[**`adwaita`**](https://pub.dev/packages/adwaita) / [**`yaru`**](https://github.com/ubuntu/yaru.dart)  
For theming

### **Optional packages**

#### [**`adwaita_icons`**](https://pub.dev/packages/adwaita_icons)
For Adwaita Icons

#### [**`bitsdojo_window`**](https://pub.dev/packages/bitsdojo_window)
Can be used with
- `AdwHeaderBar.bitsdojo`
- `AdwHeaderBar.customBitsdojo`

Example:
```dart
import 'package:bitsdojo_window/bitsdojo_window.dart';

AdwHeaderBar.bitsdojo_window(
  ...
  appWindow: appWindow,
  ...
)
```

#### [**`nativeshell`**](https://pub.dev/packages/nativeshell  )
Can be used with
- `AdwHeaderBar.nativeshell`
- `AdwHeaderBar.customNativeshell`

Example:
```dart
import 'package:nativeshell/nativeshell.dart';

AdwHeaderBar.nativeshell(
  ...
  window: Window.of(context),
  ...
)
```

#### [**`window_decorations`**](https://pub.dev/packages/window_decorations)
Can be used with
- `AdwHeaderBar`
- `AdwHeaderBar.bitsdojo`
- `AdwHeaderBar.nativeshell`

Example:
```dart
import 'package:window_decorations/window_decorations.dart';

AdwHeaderBar(
  ...
  windowDecor: windowDecor,
  ...
)
```

[Classic API Docs](https://pub.dev/documentation/libadwaita/latest/)

## License

`LGPL v3 / GNU LESSER GENERAL PUBLIC LICENSE v3`

TLDR;

- You are free to use [this](https://pub.dev/packages/libadwaita) package in whatever app you want,
- If you improve the package then you should submit your patches / improvements to [this](https://github.com/gtk-flutter/libadwaita) repository.
