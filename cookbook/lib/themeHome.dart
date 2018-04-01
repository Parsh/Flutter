import 'package:flutter/material.dart';


class ThemeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ThemeHome")
      ),
      body: new MySnackBar()
    );
  }
}

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => new _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
        children: [
          new Container(
            margin: new EdgeInsets.all(20.0),
            color: Theme.of(context).accentColor,
            child: new Center(
              child: new Text(
                "That's the theme",
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ),
          new RaisedButton(
            child: new Text("Press me"),
            onPressed: (){
              print('running');
              Scaffold.of(context).showSnackBar(
                new SnackBar(
                  content: new Text("Yay, hitted me"),
                  duration: new Duration(seconds: 1),
                  action: new SnackBarAction(
                    label: "Undo",
                    onPressed: () => print("Un-doing"),
                  ),
                )
              );
            },
          )
        ],
      );
  }
}