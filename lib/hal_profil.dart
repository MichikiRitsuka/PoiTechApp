// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class hal_profil extends StatelessWidget {
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
            "Profile",
            style: new TextStyle(
              fontSize: 30.0,
              color: Colors.indigo,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Icon(
            Icons.account_circle,
            size: 50.0,
            color: Colors.indigo,
          ),
          ElevatedButton.icon(
            label: Text(
              'poitech',
            ),
            icon: Icon(Icons.account_box),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a poitech')));
            },
          )
        ],
      ),
    ));
  }
}
