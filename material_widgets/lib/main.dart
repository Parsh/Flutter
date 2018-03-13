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
      body: new MyBody2() //created MyBody class seperately as, if implemented here, the Scaffold.of(context) was not able to find the scaffold on this context as it was not yet attached to it.
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