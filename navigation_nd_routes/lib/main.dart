import "package:flutter/material.dart";

void main(){
  runApp(new MaterialApp(
    home: new HomePage()
  ));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Home"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.redAccent,),
                iconSize: 70.0,
                onPressed: null,
              ),
              new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
              new Text('Home!', style: new TextStyle(fontSize: 25.0, color: Colors.black),)
            ],)
        ))
    );
  }
}