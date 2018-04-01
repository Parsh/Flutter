import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart' as ti;

class ImageHome extends StatefulWidget {
  @override
  _ImageHomeState createState() => new _ImageHomeState();
}

class _ImageHomeState extends State<ImageHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ImageHome"),
      ),
      body: new Stack(
        children: <Widget>[
          new Center(child: new CircularProgressIndicator()),
          new Center(
            child: new FadeInImage.memoryNetwork(
              placeholder: ti.kTransparentImage,
              image:
                  'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
            ),
          ),
        ],
      ),
    );
  }
}
