import 'package:fiserv_valet/main.dart';
import 'package:fiserv_valet/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fiserv_valet/colors.dart';


class Profile extends StatelessWidget {

  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
  new GlobalKey<FormFieldState<String>>();

  String _name;
  String _phoneNumber;
  String _email;
  String _password;

  String _validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = new RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value))
      return 'Please enter only alphabetical characters.';
    return null;
  }

  @override
  Widget build(BuildContext context) =>
      new Scaffold(
        body: new PageView(
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 18.0),
                // "Name" form.
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name *',
                  ),
                  onSaved: (String value) {
                    this._name = value;
                  },
                  validator: _validateName,
                ),
                SizedBox(height: 18.0),
                // "Phone number" form.
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.phone),
                    hintText: 'Where can we reach you?',
                    labelText: 'Phone Number *',
                    prefixText: '+86',
                  ),
                  keyboardType: TextInputType.phone,
                  onSaved: (String value) {
                    this._phoneNumber = value;
                  },
                  // TextInputFormatters are applied in sequence.
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(height: 18.0),
                // "Email" form.
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.email),
                    hintText: 'Your email address',
                    labelText: 'E-mail',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (String value) {
                    this._email = value;
                  },
                ),
                SizedBox(height: 18.0),
                // "Salary" form.
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Salary',
                      prefixText: '\$',
                      suffixText: 'USD',
                      suffixStyle: TextStyle(color: Colors.green)),
                  maxLines: 1,
                ),
                SizedBox(height: 18.0),
                // "Password" form.
                TextFormField(
                  enabled: this._password != null && this._password.isNotEmpty,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    labelText: 'Password*',
                  ),
                  maxLength: 8,
                  obscureText: true,
                ),
                TextFormField(
                  enabled: this._password != null && this._password.isNotEmpty,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    labelText: 'Re-type password',
                  ),
                  maxLength: 8,
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Center(child: new OutlineButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                    },
                    child: new Text('Save',
                      style: TextStyle(fontSize: 20, color: orange_dark),)
                ),
                ),
                SizedBox(height: 5.0),
                Center(child: new OutlineButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: new Text('Logout',
                      style: TextStyle(fontSize: 20, color: orange),)
                ),
                )
              ],
            )
          ],
        ),
      );
}