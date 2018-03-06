import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: 'Shopping List Application',
      color: Colors.blue,
      home: new Home()
    )
  );
}

class Home extends StatefulWidget{
  @override
  createState() => new HomeState();
}

class HomeState extends State<Home>{

  TextEditingController item_controller;
  TextEditingController quantity_controller;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Shopping List"),
        backgroundColor: Colors.blue
      ),
      body: new Container(
          padding: new EdgeInsets.only(top: 50.0),
          child: new Column(
            children: <Widget>[
              new Text("Let's Remember", style: new TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, color: Colors.blue)),
              new Padding(padding: new EdgeInsets.only(bottom: 30.0)),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter the Item to Buy"),
                controller: item_controller, 
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter the Quantity"),
                controller: quantity_controller,
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 40.0)),
              new RaisedButton(
                color: Colors.blue,
                child: new Text("Save", style: new TextStyle(fontSize: 15.0, color: Colors.white)),
                onPressed: null,
              )
            ],
          )
      )
      );
  }

}
