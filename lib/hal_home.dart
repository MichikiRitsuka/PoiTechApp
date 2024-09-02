// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class hal_home extends StatelessWidget {
//hal_home({required this.gambar, required this.teks});

//final String teks;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Text(
            "Home",
            style: new TextStyle(
              fontSize: 30.0,
              color: Colors.indigo,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Image.asset(
            "images/poitech1.png",
            width: 200.0,
          )
        ],
      ),
    ));
  }
}
