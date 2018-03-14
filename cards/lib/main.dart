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
      body: new card.MyCard(
        "https://images.news18.com/ibnlive/uploads/2017/03/Stephen-Hawking.jpg",
        {"header":"Stephen Hawking", "body": "RIP 1942-2018"},
        {"header": "Physics can take one beyond one's physical limitations" , "body": "One of the Greatest Minds of All Time, who set the theory of cosmology as the union of relativity and quantum mechanics. Professor Stephen Hawking, #RIP" } )
    );
  }
}
