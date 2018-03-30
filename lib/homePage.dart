
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart' as webview_plugin;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // launchURL(String url) async{
  //   if (await launcher.canLaunch(url)){
  //      await launcher.launch(url, forceWebView: true, forceSafariVC: true);
  //   } else {
  //     print("Can't launch $url");
  //   }
  // }
  String url = "https://www.google.com";
  final webView = new webview_plugin.FlutterWebviewPlugin();
  TextEditingController controller = new TextEditingController();
  
  @override
  void initState(){
    super.initState();
    webView.close(); //by default it is close
  }

  @override
  void dispose(){
    webView.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.home),
        title: new Text("HomePage"),
      ),
      body: new Center(
        child: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.all(10.0),
                child: new TextField(
                  controller: controller,
                  decoration: new InputDecoration(
                    hintText: "Enter the URL to launc",
                  ),
                )
              ),
              new RaisedButton(
                child: new Text("Launch", style: new TextStyle(color: Colors.white),),
                color: Colors.black, 
                onPressed: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context){
                      return new webview_plugin.WebviewScaffold(
                        url: controller.text,
                        appBar: new AppBar(
                          title: new Text('WebView')
                        ),
                        withJavascript: true,
                        withLocalStorage: true,
                        withZoom: true,
                      );
                    }
                  )
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
