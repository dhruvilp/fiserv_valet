import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';

class Investment extends StatefulWidget {
  @override
  InvestmentState createState() {
    return new InvestmentState();
  }
}

class InvestmentState extends State<Investment> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 10.0),
          child: Text('Investment Guides', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: orange_dark),),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Saving Account',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('401 K',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Money Grow Plan',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Bank',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Source 3',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Source 586',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Source 456',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Source 7867',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Source 456',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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
                        title: const Text('Source'),
                        content: Text('weblink', ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                          ),
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context, 'OK'),
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
                      child: Text('Source 890',
                        style: TextStyle(color: white, fontSize: 25,),
                        textAlign: TextAlign.left,),
                    ),
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