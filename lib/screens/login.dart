import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:fiserv_valet/main.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _inputIsValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            Column(
              children: <Widget>[
                Image.asset('assets/images/appicon.png', width: 200, height: 200,),
                SizedBox(height: 5.0),
              ],
            ),
            SizedBox(height: 35.0),
            Center(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 20, color: orange_dark),
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  fillColor: orange_dark,
                  hasFloatingPlaceholder: true,
                  errorText: _inputIsValid ? null : 'Please enter valid email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Center(
              child: TextField(
                style: TextStyle(fontSize: 20, color: orange_dark),
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: orange_dark,
                  hasFloatingPlaceholder: true,
                  errorText: _inputIsValid ? null : 'Please enter valid password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('LOGIN'),
                  color: orange,
                  textColor: white,
                  textTheme: ButtonTextTheme.normal,
                  elevation: 6.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

}
