import 'package:flutter/material.dart';
import './FirstPage.dart' as First;
import './SecondPage.dart' as Second;
import './ThirdPage.dart' as Third;

void main(){
  runApp(
    new MaterialApp(
      home: new MyTabs()
    )
  );
}

class MyTabs extends StatefulWidget{
  @override
  createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Tab Navigation'),
        backgroundColor: Colors.deepOrange,
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.arrow_forward)),
            new Tab(icon: new Icon(Icons.arrow_downward)),
            new Tab(icon: new Icon(Icons.arrow_back))
          ],
        ),
      ),
      bottomNavigationBar: new Material(
        color: Colors.deepOrange,
        child: new TabBar(
         controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.arrow_forward)),
            new Tab(icon: new Icon(Icons.arrow_downward)),
            new Tab(icon: new Icon(Icons.arrow_back))
          ],
      )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new First.FirstPage(),
          new Second.SecondPage(),
          new Third.ThirdPage()
        ],
      )
    );
  }
}