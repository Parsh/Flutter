import 'package:flutter/material.dart';

void main(){
  runApp(
    new Container(
      color: Colors.blue,
      child: new Center(
        child: new Directionality(
          textDirection: TextDirection.ltr,
          child: new Text('Hello World!')
        )
      )
    )
  );
}