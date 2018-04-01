import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => new _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("TabHome"),
          bottom: new TabBar(
            tabs: <Widget>[
              new Icon(Icons.business),
              new Icon(Icons.favorite),
              new Icon(Icons.satellite),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              child: new Center(
                child: new Text("Business", style: Theme.of(context).textTheme.title,)
              )
            ),
            new Container(
              child: new Center(
                child: new Text("Favorite", style: Theme.of(context).textTheme.title,)
              )
            ),
            new Container(
              child: new Center(
                child: new Text("Satellite", style: Theme.of(context).textTheme.title,)
              )
            ),
          ],
        ),
      ),
    );
  }
}