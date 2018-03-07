import "package:flutter/material.dart";

class ShoppingList extends StatefulWidget{
  @override
  createState() => new ShoppingListState();
}

class ShoppingListState extends State<ShoppingList>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        title: new Text("Shopping List"),
        backgroundColor: Colors.blue,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pushNamed('/'),
        ),
      ),
    );
  }
}