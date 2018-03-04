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
          padding: new EdgeInsets.all(20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             new MyCard(
               title: new Text('That is a GUY',
                  style: new TextStyle(
                    fontSize: 25.0
                  )),
               icon: new Icon(Icons.face, size:40.0, color: Colors.redAccent)
             ),
             new MyCard(
               title: new Text('WE love FOOD',
                  style: new TextStyle(
                    fontSize: 25.0
                  )),
               icon: new Icon(Icons.fastfood, size:40.0, color: Colors.brown)
             ),
             new MyCard(
               title: new Text('Lets Play a Game',
                  style: new TextStyle(
                    fontSize: 25.0
                  )),
               icon: new Icon(Icons.games, size:40.0, color: Colors.lightBlue)
             )
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

  MyCard({this.title, this.icon});
 
  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.only(bottom:20.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(20.0),
          child:new Column(
            children: <Widget>[
              this.title,
              this.icon
          ]
          )
        ) 
      )
    );
  }
}