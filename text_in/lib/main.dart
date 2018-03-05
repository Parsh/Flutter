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

  String displayString = "";
  final TextEditingController controller = new TextEditingController();

  void display(String str){
    setState((){
      displayString = displayString  + '\n' + str;
    });
    controller.text = "";
  }

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
              new Icon(Icons.text_fields, size: 70.0, color: Colors.deepOrange),
              new TextField(
                decoration: new InputDecoration(hintText: 'Enter the Item'),
                controller: controller,
                onSubmitted: display,
              ),
              new Text(displayString)
            ],
          )
        )
      )
    );
  }
}