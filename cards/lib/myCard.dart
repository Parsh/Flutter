import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => new _MyCardState();
}

class _MyCardState extends State<MyCard> {

  @override
  Widget build(BuildContext context) {
    return new Container(
          margin: new EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.network("https://images.news18.com/ibnlive/uploads/2017/03/Stephen-Hawking.jpg"),
              new Container(
                margin: new EdgeInsets.all(16.0),
                child: new Row(
                  children: <Widget>[
                   new Expanded(
                     child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Stephen Hawking", style: Theme.of(context).textTheme.headline),
                        new Text("RIP 1942-2018", style: Theme.of(context).textTheme.body1)
                      ],
                    ),
                   ),
                    new FlatButton(
                      color: Colors.pink,
                      child: new Icon(Icons.favorite, color: Colors.white,),
                      onPressed: () => print("Pressed"),
                    )
                ],)
              )
            ],
          )
      );
  }
}