import "package:flutter/material.dart";

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
        child: new Center(
         child: new Icon(Icons.favorite, size: 150.0, color: Colors.redAccent)
        )
      )
    );
  }
}