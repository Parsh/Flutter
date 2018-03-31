import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WebSocket",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(
        channel: new IOWebSocketChannel.connect("ws://echo.websocket.org"),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final WebSocketChannel channel;

  HomePage({@required this.channel});

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController controller;

  @override
  void initState(){
    super.initState();
    controller = new TextEditingController();
  }

  @override
  void dispose(){
    controller.dispose();
    widget.channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WebSocket"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new ListView(
          children: <Widget>[
            new Form(
              child: new TextFormField(
                controller: controller,
                decoration: new InputDecoration(
                  labelText: "Enter your message"
                ),
              ),
            ),
            new StreamBuilder(
              stream: widget.channel.stream,
              builder: (contenxt, snapshot){
                return new Padding(
                  padding: new EdgeInsets.all(20.0),
                  child: new Text(snapshot.hasData? '${snapshot.data}': ''),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.send),
        tooltip: "Send message",
        onPressed: (){
          if (controller.text.isNotEmpty){
            widget.channel.sink.add(controller.text);
          }
        },
      )
    );
  }
}