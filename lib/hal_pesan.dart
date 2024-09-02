// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class hal_pesan extends StatelessWidget {
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
            "Mail",
            style: new TextStyle(
              fontSize: 30.0,
              color: Colors.indigo,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Image(
            image: new NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTji9PVJZi-u45LQMa9e0404SEZKcOTg64DJg&usqp=CAU",
            ),
            width: 200.0,
          )
        ],
      ),
    ));
  }
}
