import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'This is a Stateless App',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Stateless Widget')),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Text('Hey'),
              new Text ('There is'),
              new Text ('Something out there on Mars!')
            ],
          )
          )
    )
  );
  }
}

class MyCard extends StatelessWidget{
  
  final Widget title;
  final Widget icon;

  MyCard(this.title, this.icon);
 
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Text('In Love with Flutter'),
            new Icon(Icons.favorite)
          ]
          )
      )
    );
  }
}