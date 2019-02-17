import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';

class Groceries extends MaterialPageRoute<Null> {

  Groceries() : super (builder: (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: orange_light,
        title: new Text(
          'Groceries',
          style: new TextStyle(
            fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
          ),
        ),
        elevation: 0.3,
      ),

      //Content of tabs
      body: new PageView(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Grocery page content')
            ],
          )
        ],
      ),
    );
  });
}