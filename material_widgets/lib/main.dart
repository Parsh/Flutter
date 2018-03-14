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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController tabController;
  
  Widget tabBar(){
    return new TabBarView(
      children: <Widget>[
        new NewPage("First"),
        new NewPage("Second"),
      ],
      controller: tabController,
    );
  }

  @override
  void initState(){
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        bottom: new TabBar(
          controller: tabController,
            tabs: <Widget>[
              new Icon(Icons.favorite),
              new Icon(Icons.email)
            ],
        ),
      ),
      body: tabBar(), 
      bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new TabBar(
           controller: tabController,
            tabs: <Widget>[
              new Icon(Icons.favorite),
              new Icon(Icons.email)
            ],
        ),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  //created MyBody class seperately as, if implemented here, the Scaffold.of(context) was not able to find the scaffold on this context as it was not yet attached to it.
  @override
  Widget build(BuildContext context) {
     return new Container(
        child: new Center(
           child: new RaisedButton(

               child: new Text("Press me"),
              //  onPressed: () => Scaffold.of(context).showSnackBar(
              //    new SnackBar(
              //      content: new Text("Pressed!"),
              //      duration: new Duration(seconds: 1),
              //    )
              //  )

              onPressed: () => showDialog(
                context: context, 
                child: new AlertDialog(
                  content: new Text("Pressed!"),
                  )
                ),

           )
        )   
      );
  }
}


class MyBody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stepper(
        steps: <Step>[
         new Step(
           title: new Text("Step 1"),
           content: new Text("Content for step 1"),
           isActive: true
         ),
         new Step(
           title: new Text("Step 1"),
           content: new Text("Content for step 1"),
           isActive: true
         ),
         new Step(
           title: new Text("Step 1"),
           content: new Text("Content for step 1"),
           isActive: true,
          
         )
        ],
         currentStep: 0,
         type: StepperType.vertical,
      )
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Text(title)
        )
      )
    );
  }
}