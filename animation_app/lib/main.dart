import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "A Flutter Animation App",
      color: Colors.blue,
      home: new Home()
    )
  );
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: new Center()
    );
  }
}
