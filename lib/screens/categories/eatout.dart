import 'package:fiserv_valet/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:fiserv_valet/screens/categories/charts/eatoutchart.dart';

class EatOut extends MaterialPageRoute<Null> {

  EatOut() : super (builder: (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: orange_light,
        title: new Text(
          'Spendings',
          style: new TextStyle(
            fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
          ),
        ),
        elevation: 0.3,
      ),

      //Content of tabs
      body: new ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Center(
            child: Text('EatOut', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: orange_dark),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 5.0),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 0.0,
            child: Container(
              height: 150.0,
              child: InkWell(
                splashColor: white,
                onTap: () { },
                child: Row(
                  children: <Widget>[
                    Expanded(child: EatOutChart(),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Center(
            child: Text('Transactions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: orange_dark),textAlign: TextAlign.center,),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            elevation: 0.0,
            child: Container(
              height: 320.0,
              child: InkWell(
                splashColor: white,
                onTap: () { },
                child: Row(
                  children: <Widget>[
                    Expanded(child: Transactions(),),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  });
}