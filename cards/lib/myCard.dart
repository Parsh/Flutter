import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {

  final String imageURL;
  final Map<String, String> brief;
  final Map<String, String> detail;


  MyCard(this.imageURL, this.brief, this.detail);

  @override
  _MyCardState createState() => new _MyCardState();
}

class _MyCardState extends State<MyCard> {

  bool open = false;

  Widget briefSection(){
    return new InkWell(
      onTap: () => setState((){
        open = !open;
      }),
      child: new Container(
                margin: new EdgeInsets.all(16.0),
                child: new Row(
                  children: <Widget>[
                   new Expanded(
                     child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(widget.brief['header'], style: Theme.of(context).textTheme.headline),
                        new Text(widget.brief['body'], style: Theme.of(context).textTheme.body1)
                      ],
                    ),
                   ),
                    new FlatButton(
                      color: Colors.pink,
                      child: new Icon(Icons.favorite, color: Colors.white,),
                      onPressed: () => print("Pressed"),
                    )
                ],)
              )
    );
  }

  Widget detailSection(){
    return new Column(
      children: <Widget>[
        new Divider(),
        new Container(
            margin: new EdgeInsets.all(16.0),
            child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                new Text(widget.detail['header'], style: Theme.of(context).textTheme.headline),
                new Padding(padding: new EdgeInsets.only(bottom: 10.0)),
                new Text(widget.detail['body'], style: Theme.of(context).textTheme.body1)
        ]
      ),
    )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
          margin: new EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
          child: new Card(
            child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.network(widget.imageURL),
              briefSection(),
              new AnimatedCrossFade(
                firstChild: detailSection(),
                secondChild: new Container(),
                crossFadeState: open ? CrossFadeState.showFirst: CrossFadeState.showSecond,
                duration: new Duration(milliseconds: 300),
              ),
            ],
          )
         )     
      );
  }
}