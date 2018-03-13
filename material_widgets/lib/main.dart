import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Utilities App",
      theme: new ThemeData(
        primarySwatch: Colors.teal
      ),
      home: new HomePage("Home"),
    );
  }

}

class HomePage extends StatefulWidget {

  final String title;
  HomePage(this.title);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new MyBody()
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return new Container(
        child: new Center(
           child: new RaisedButton(
               child: new Text("Press me"),
               onPressed: () => Scaffold.of(context).showSnackBar(
                 new SnackBar(
                   content: new Text("Pressed!"),
                   duration: new Duration(seconds: 1),
                 )
               )
           )
        )   
      );
  }
}
