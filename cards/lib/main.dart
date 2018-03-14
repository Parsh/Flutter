import 'package:flutter/material.dart';
import './myCard.dart' as card;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Demo App",
      theme: new ThemeData(),
      home: new HomePage("Material Cards")
    );
  }
}

class HomePage extends StatelessWidget {
  
  final String title;
  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.pink,
      ),
      body: new card.MyCard()
    );
  }
}
