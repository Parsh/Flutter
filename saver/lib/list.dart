import "./io.dart" as io;

import "package:flutter/material.dart";

class ShoppingList extends StatefulWidget{
  @override
  createState() => new ShoppingListState();
}

class ShoppingListState extends State<ShoppingList>{

var content;

  @override
  void initState(){
    super.initState();
    io.readFromFile();
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        title: new Text("Shopping List"),
        backgroundColor: Colors.blue,  
      /*leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushNamed('/'),
        ),*/ 
      ),
      body: new Container(
        child: new ListView.builder(
          itemCount: io.fileContent == null? 0: io.fileContent.length,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              color: Colors.white,
              child: new ListTile(
              title: new Text(io.fileContent[index]['item'], style: new TextStyle(fontSize: 20.0)),
              trailing: new Text(io.fileContent[index]['quantity'].toString(), style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
            )
           ) ;
          },
      )
    )
  );
  }
}

/*  new Center(
          child: new Text(io.fileContent.toString(), style: new TextStyle(fontSize: 20.0, color: Colors.white)),
     )*/

      