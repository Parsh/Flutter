import "dart:io";
import "dart:convert";
import "./io.dart" as io;

import "package:flutter/material.dart";
import "package:path_provider/path_provider.dart" as path;

class Home extends StatefulWidget{
  @override
  createState() => new HomeState();
}

class HomeState extends State<Home>{

  File jsonFile;
  Directory dir;
  String fileName = "ShoppingList.json";
  bool fileExists = false;
  Map<String, int> fileContent;

 
  TextEditingController itemController;
  TextEditingController quantityController;

  void write(){
      io.writeToFile(itemController.text, int.parse(quantityController.text), dir, fileExists, jsonFile, fileContent, fileName);
  }

  @override
  void initState(){
    super.initState();
    itemController = new TextEditingController();
    quantityController = new TextEditingController();
    
    path.getApplicationDocumentsDirectory().then((Directory directory){
      dir = directory;
      jsonFile = new File(dir.path + '/' + this.fileName);
      jsonFile.exists().then((bool val){
        this.fileExists = val;
        return this.fileExists;
      }).then((bool fileEx){
        if (fileEx) this.setState(()=> this.fileContent = JSON.decode(jsonFile.readAsStringSync()));
      });
    });
  }

  @override
  void dispose(){
    itemController.dispose();
    quantityController.dispose();
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
              //new Text("Let's Remember", style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue)),
              new Text(fileContent.toString(), style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),              
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter the Item to Buy"),
                controller: itemController, 
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter the Quantity"),
                controller: quantityController,
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 30.0)),
              new RaisedButton(
                color: Colors.blue,
                child: new Text("Save", style: new TextStyle(fontSize: 15.0, color: Colors.white)),
                onPressed: write,
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new RaisedButton(
                color: Colors.blue,
                child: new Icon(Icons.arrow_forward, color: Colors.white),
                onPressed: () => Navigator.of(context).pushNamed('/list'),
              )
            ],
          )
      )
      );
  }

}
