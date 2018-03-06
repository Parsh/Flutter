import 'package:flutter/material.dart';
import "./home.dart" as home;


void main(){
  runApp(
    new MaterialApp(
      title: 'Shopping List Application',
      color: Colors.blue,
      home: new home.Home()
    )
  );
}

