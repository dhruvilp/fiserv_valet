import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:fiserv_valet/screens/cardlist.dart';
import 'package:flutter/material.dart';
import 'package:fiserv_valet/screens/categorylist.dart';
import 'package:fiserv_valet/screens/categories/groceries.dart';
import 'package:fiserv_valet/screens/categories/gas.dart';
import 'package:fiserv_valet/screens/categories/eatout.dart';
import 'package:fiserv_valet/screens/categories/online.dart';

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
              height: 253.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: white,
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
            new Container(
              height: 350.0,
              child: new CategoryList(),
            )


          ],
        ),
      ),
    );
  }
}