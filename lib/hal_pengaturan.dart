// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class hal_pengaturan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Text(
            "Settings",
            style: new TextStyle(
              fontSize: 30.0,
              color: Colors.indigo,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Icon(
            Icons.settings,
            size: 50.0,
            color: Colors.indigo,
          )
        ],
      ),
    ));
  }
}
