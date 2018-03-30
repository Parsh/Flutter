import 'package:flutter/material.dart';
import 'homePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Web Viwer App",
      theme: new ThemeData(
        primaryColor: Colors.black
      ),
      home: new HomePage(),
    );
  }
}
