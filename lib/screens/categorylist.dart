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
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, bottom: 0.0),
              child: new Text("Amount Spent", style: const TextStyle(fontSize: 15.0, color: grey_light)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125.0, bottom: 5.0, top: 5.0),
              child: new Text("\$1,400", style: const TextStyle(fontSize: 25.0, color: grey_dark, fontWeight: FontWeight.w700)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5.0, top: 5.0),
              child: new Text("/ 1,500", style: const TextStyle(fontSize: 15.0, color: grey_dark, fontWeight: FontWeight.w700)),
            ),
          ],
        ),
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
                    child: new Text("\$155", style: TextStyle(fontSize: 20, color: white),),
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
              onTap: () { Navigator.push(context, Online());},
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
                    child: new Text("\$860", style: TextStyle(fontSize: 20, color: white),),
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
                    child: new Text("\$121", style: TextStyle(fontSize: 20, color: white),),
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
                    child: new Text("\$215", style: TextStyle(fontSize: 20, color: white),),
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