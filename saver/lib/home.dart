import "package:flutter/material.dart";

class Home extends StatefulWidget{
  @override
  createState() => new HomeState();
}

class HomeState extends State<Home>{

  TextEditingController item_controller;
  TextEditingController quantity_controller;

  @override
  void initState(){
    super.initState();
    item_controller = new TextEditingController();
    quantity_controller = new TextEditingController();
  }

  @override
  void dispose(){
    item_controller.dispose();
    quantity_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.blue
      ),
      body: new Container(
          padding: new EdgeInsets.only(top: 20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text("Let's Remember", style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue)),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter the Item to Buy"),
                controller: item_controller, 
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter the Quantity"),
                controller: quantity_controller,
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 30.0)),
              new RaisedButton(
                color: Colors.blue,
                child: new Text("Save", style: new TextStyle(fontSize: 15.0, color: Colors.white)),
                onPressed: null,
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new RaisedButton(
                color: Colors.blue,
                child: new Icon(Icons.arrow_forward),
                onPressed: null,
              )
            ],
          )
      )
      );
  }

}
