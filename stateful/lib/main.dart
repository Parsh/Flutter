import "package:flutter/material.dart";

void main() => runApp(new MaterialApp(home: new AwesomeButton()));

class AwesomeButton extends StatefulWidget{
  
  @override
  createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Stateful Flutter App'), backgroundColor: Colors.deepOrange,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Can you dig it"),
              new RaisedButton(
                child: new Text("Press me"),
                color: Colors.deepOrange,
                onPressed: null
              )
            ],)
        )
      )
    );
  }

}