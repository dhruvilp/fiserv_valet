import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class Transactions extends StatelessWidget {
  _trans() {
    return <TransStruct>[
      TransStruct(
          eventTime:  '10:00\nAM',
          eventTitle: 'Item 1',
          price: '\$10.0'),
      TransStruct(
          eventTime:  '11:00\nAM',
          eventTitle: 'Item 2',
          price: '\$75.0'),
      TransStruct(
          eventTime:  '11:30\nAM',
          eventTitle: 'Item 3',
          price: '\$28.0'),

      TransStruct(
          eventTime:  '01:00\nPM',
          eventTitle: 'Item 4',
          price: '\$220.0'),
      TransStruct(
          eventTime:  '06:00\nPM',
          eventTitle: 'Item 5',
          price: '\$5.67'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: TransList(_trans()), backgroundColor: white,);
  }
}

class TransStruct {
  final String eventTitle;
  final String eventTime;
  final String price;

  TransStruct({this.eventTime, this.eventTitle, this.price});
}

class TransListItem extends StatelessWidget{
  final TransStruct _transStruct;
  TransListItem(this._transStruct);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: ExpansionTile(
        leading: new Text(
          _transStruct.eventTime,
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: grey_light,
            textBaseline: TextBaseline.alphabetic,
            fontSize: 12.0,
          ),
        ),
        trailing: new Text(
          _transStruct.price,
          textAlign: TextAlign.right,
          style: new TextStyle(
            color: grey_dark,
            textBaseline: TextBaseline.alphabetic,
            fontSize: 18.0,
          ),
        ),
        title: new Text(_transStruct.eventTitle,
          style: new TextStyle(
            color: orange_dark,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}

class TransList extends StatelessWidget{
  final List<TransStruct> _transStruct;
  TransList(this._transStruct);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 7.0),
      children: _buildEventList(),
    );
  }

  List<TransListItem> _buildEventList() {
    return _transStruct.map((event) => new TransListItem(event))
        .toList();
  }
}
