import 'dart:async';
import 'package:fiserv_valet/screens/categories/groceries.dart';
import 'package:fiserv_valet/screens/categories/gas.dart';
import 'package:fiserv_valet/screens/categories/eatout.dart';
import 'package:fiserv_valet/screens/categories/online.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class CategoryList extends StatefulWidget{
  @override
  CategoryListState createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList>
    with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 10.0),
          child: Text('February 2019', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: orange_dark),),
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
              onTap: () { Navigator.push(context, Groceries());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Groceries',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$1500", style: TextStyle(fontSize: 20, color: white),),
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
              onTap: () { Navigator.push(context, OnlineShoppings());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Online Shoppings',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$2500", style: TextStyle(fontSize: 20, color: white),),
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
              onTap: () { Navigator.push(context, Gas());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Gas',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$500", style: TextStyle(fontSize: 20, color: white),),
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
              onTap: () { Navigator.push(context, EatOut());},
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Eat-Out',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: new Text("\$1000", style: TextStyle(fontSize: 20, color: white),),
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