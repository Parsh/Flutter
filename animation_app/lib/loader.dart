import "package:flutter/material.dart";

class Loader extends StatefulWidget{
  @override
  createState() => new LoaderState();
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState(){
    super.initState();
    controller = new AnimationController(duration: new Duration(seconds: 1), vsync: this);
    animation = new CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    animation.addListener((){
      this.setState((){});
    });
    controller.repeat();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
      color: Colors.white,
      height: 3.0,
      width: animation.value * 100,
    ),
    new Padding(padding: new EdgeInsets.only(bottom: 5.0)),
    new Container(
      color: Colors.white,
      height: 3.0,
      width: animation.value * 70,
    ),
    new Padding(padding: new EdgeInsets.only(bottom: 5.0)),
    new Container(
      color: Colors.white,
      height: 3.0,
      width: animation.value * 50,
    )
      ],
    );
  }
}