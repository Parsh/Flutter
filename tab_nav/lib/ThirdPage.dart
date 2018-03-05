import "package:flutter/material.dart";

class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Tab Navigation'),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
         child: new Icon(Icons.local_pizza, size: 150.0, color: Colors.brown)
        )
      )
    );
  }
}