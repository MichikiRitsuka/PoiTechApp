// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class hal_keranjang extends StatelessWidget {
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
            "Shopping Cart",
            style: new TextStyle(
              fontSize: 30.0,
              color: Colors.indigo,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(20.0),
          ),
          new Icon(
            Icons.shopping_cart,
            size: 50.0,
            color: Colors.indigo,
          )
        ],
      ),
    ));
  }
}
