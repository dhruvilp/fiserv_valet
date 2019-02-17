import 'package:fiserv_valet/main.dart';
import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:flutter/services.dart';

class MyBudget extends StatefulWidget {
  @override
  _MyBudgetState createState() => _MyBudgetState();
}

class _MyBudgetState extends State<MyBudget > {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('Set Your Budgets', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: orange_dark),textAlign: TextAlign.center,),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Groceries',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Online Shoppings',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Gas',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Eat-Out',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Misc.',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Passenger Railways',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Internet & Media',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Savings',
                prefixText: '\$',
                suffixText: 'USD',
                suffixStyle: TextStyle(color: Colors.green)),
            maxLines: 1,
            onSaved: (String str){},
          ),
          SizedBox(height: 24.0),
          Center(child: new OutlineButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
              child: new Text('Save',
              style: TextStyle(fontSize: 20, color: orange),)
            ),
          ),
          SizedBox(height: 24.0),
        ],
      )
    );
  }
}