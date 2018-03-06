import "dart:async";
import "dart:convert";

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

void main(){
  runApp(
    new MaterialApp(
      title: "HTTP Flutter App",
      color: Colors.blue,
      home: new MyHttp()
    )
  );
}


class MyHttp extends StatefulWidget{
  @override
  createState() => new MyHttpState();
}

class MyHttpState extends State<MyHttp>{

Future<String> getData() async{
    http.Response response = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      headers: {
        'Accept': 'application/json'
      }
    );
  var data = JSON.decode(response.body);
  print(data);
}

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('The HTTP App'),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new RaisedButton(
            child: new Text("Fetch Data", style: new TextStyle(color: Colors.white, fontSize: 20.0)),
            color: Colors.blue,
            onPressed: getData,
          )
        )
      ),
    );
  }
}

