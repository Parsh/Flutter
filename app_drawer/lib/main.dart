import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Drawer App",
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("HomePage"),
          leading: new Icon(Icons.home),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Parshva Jain"),
                accountEmail: new Text("parsh.cosmos11@gmail.com"),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ9GFuhKqOj8eKzUcYS6CnLm9y9pTgWr--NDPib3FX9GJ4CCC9zg"))),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://ei.marketwatch.com/Multimedia/2018/03/27/Photos/ZH/MW-GG320_musk_20180327105008_ZH.jpg?uuid=24baea74-31ce-11e8-9e72-ac162d7bc1f7"),
                ),
              ),
              new ListTile(
                  title: new Text("First page"),
                  trailing: new Icon(Icons.headset),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      new MaterialPageRoute(builder: (BuildContext context) {
                        return new FirstPage();
                      }),
                    );
                  }),
              new Divider(),
              new ListTile(
                  title: new Text("Second page"),
                  trailing: new Icon(Icons.access_alarm),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context) {
                      return new SecondPage();
                    }));
                  }),
              new Divider(),
              new ListTile(
                title: new Text("Close"),
                trailing: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: new Container(child: new Center(child: new Text("Home Page"))));
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("FIrst Page")),
      body: new Center(
        child: new Text("First Page"),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SecondPage"),
      ),
      body: new Center(
        child: new Text("Second Page"),
      ),
    );
  }
}
