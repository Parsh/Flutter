import "dart:async";
import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main(){
  runApp(
    new MaterialApp(
      title: "Flutter List View",
      color: Colors.blue,
      home: new HomePage()
    )
  );
}


class HomePage extends StatefulWidget{
  @override
  createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  List data;

  Future<String> getdata() async{

      http.Response response = await http.get(
        Uri.encodeFull(""),
        headers: {
          "Accept": "application/json"
        }
      );

      data = JSON.decode(response.body);
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Listview'),
        backgroundColor: Colors.blue,
      ),
      body: new Container(),
    );
  }
}