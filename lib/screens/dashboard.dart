import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:fiserv_valet/screens/cardlist.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: 300.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.only(topLeft: const Radius.circular(30.0), topRight: const Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: new DefaultTabController(
                length: 3,
                child: new Column(
                  children: <Widget>[
                    new CardList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}