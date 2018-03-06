import 'package:flutter/material.dart';
import "./home.dart" as home;
import "./list.dart" as list;

void main(){
  runApp(
    new MaterialApp(
      title: 'Shopping List Application',
      color: Colors.blue,
      routes: {
        "./list": (BuildContext context) => new list.ShoppingList()
      },
      home: new home.Home()
    )
  );
}

