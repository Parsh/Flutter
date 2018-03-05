import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      home: new MyTextInput()
    )
  );
}

class MyTextInput extends StatefulWidget{
  @override
  createState()=> new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('The Input App'), backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: 'Enter the Item'),
              ),
              new Text('')
            ],
          )
        )
      )
    );
  }
}