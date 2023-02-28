
## EasyContext
---
A package that simplifies the access most of used properties/fuctions right in the `BuildContext`. It utilizes the [dart extension](https://dart.dev/guides/language/extension-methods) feature and reduce the boilerplate for commonly used statements. 

To learn more, check out this [medium article](https://medium.com/aubergine-solutions/easily-understand-darts-extension-methods-for-flutter-2b3d3d3c698f) on dart extenstions.
## Extensions
---
- currently availabe extensions in the latest version

###### `MediaQuery.of(context)` :
- context.size
- context.width
- context.height
- context.statusBarHeight

###### `Navigator.of(context)` :
- context.push
- context.pop
- context.canPop
- context.pushAndRemoveUntil
- context.pushNamedAndRemoveUntil
- context.popUntil
- context.pushNamed

## Install
---
Add the dependency in your `pubspec.yaml`:
```yaml
dependencies:
  easy_context: ^1.0.0
```

Import it in the file you want to use it e.g, in widgets.dart file
```dart
import "package:easy_context/easy_context.dart"
```

## Usage
---
Here is a usage example:
```dart
import 'package:flutter/material.dart';
import "package:build_context/build_context.dart";

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.pushNamed('/detailsPage'), 
          child: Text(
            'Press Me',
          ),
        ),
      ),
    );
  }
}
```

## Support 
---
You liked this package? then hit a like. I don't want to buy you a coffee. Just use this package if you feel the need. And if you need a feel... contribute and let's make something better together.
-   Start this repository
-   Create a Pull Request with new features
-   Share this package
-   Create issues if you find a Bug or want to suggest something