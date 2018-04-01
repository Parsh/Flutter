import 'package:flutter/material.dart';

import 'imageHome.dart';
import 'tabHome.dart';
import 'themeHome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Flutter CookBook",
        theme: new ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],
        ),
        home: new ImageHome(),
        );
  }
}
