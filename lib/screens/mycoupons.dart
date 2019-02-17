import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';

class MyCoupons extends StatefulWidget {
  @override
  MyCouponsState createState() {
    return new MyCouponsState();
  }
}

class MyCouponsState extends State<MyCoupons> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 10.0),
          child: Text('Grocery Coupons', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: orange_dark),),
        ),
        SizedBox(height: 5.0),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                context: context,
                builder: (BuildContext context) =>
                  AlertDialog(
                    title: const Text('Your Coupon Code'),
                    content: Text('RT56YU7', ),
                    actions: <Widget>[
                      FlatButton(
                      child: Text('Cancel'),
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      ),
                      FlatButton(
                      child: Text('USE'),
                      onPressed: () => Navigator.pop(context, 'USE'),
                      ),
                    ],
                  ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Coupon 789',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$15 off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Cuopon 678',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("20% off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Coupon 356',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$20 off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Coupon 124',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("25% off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Coupon 789',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$15 off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Cuopon 678',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("20% off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Coupon 356',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$20 off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: orange,
          margin: EdgeInsets.all(10.0),
          elevation: 4.0,
          child: Container(
            height: 70.0,
            child: InkWell(
              splashColor: white,
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text('Your Coupon Code'),
                        content: Text('RT56YU7', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('USE'),
                            onPressed: () => Navigator.pop(context, 'USE'),
                          ),
                        ],
                      ),
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Coupon 124',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("25% off", style: TextStyle(fontSize: 20, color: white),),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}