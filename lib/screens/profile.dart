import 'package:fiserv_valet/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';

class Profile extends StatelessWidget {
  @override
  Widget build (BuildContext context) => new Scaffold(

    //App Bar
//    appBar: new AppBar(
//      backgroundColor: bluegrey,
//      title: new Text(
//        'About HackRU',
//        style: new TextStyle(
//          fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
//        ),
//      ),
//      elevation: 0.3,
//    ),

    //Content of tabs
    body: new PageView(
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: new FlatButton(
              onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Login()),
              );
              },
              child: new Text('Logout',
                style: TextStyle(fontSize: 25, color: orange_dark),)),
            )
          ],
        )
      ],
    ),
  );
}