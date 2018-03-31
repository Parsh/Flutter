import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Dismissable List",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List.generate(30, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          leading: new Icon(Icons.home),
          title: new Text("HomePage"),
        ),
        body: new ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return new Dismissible(
              key: new Key(list[index]),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction) {
                list.removeAt(index);
                Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text("Removed Item $index"),
                      duration: new Duration(milliseconds: 800),
                    ));
              },
              background: new Container(
                padding: new EdgeInsets.only(left: 15.0),
                alignment: Alignment.centerLeft,
                child: new Text(
                  "Remove",
                  style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                color: Colors.red,
              ),
              child: new ListTile(
                title: new Text("${list[index]}"),
              ),
            );
          },
        ));
  }
}
