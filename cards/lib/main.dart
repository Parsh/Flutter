import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Demo App",
      theme: new ThemeData(),
      home: new MyCard("Material Cards")
    )
    );
  }
}

class MyCard extends StatefulWidget {
  final String title;
  MyCard(this.title);

  @override
  _MyCardState createState() => new _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Colors.pink,
      ),
    );
  }
}