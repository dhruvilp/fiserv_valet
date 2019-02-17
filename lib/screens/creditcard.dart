import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';

class CreditCard {

  String name;
  String expr;
  String number;
  String cvv;
  String creditLimit;
  Color color;

  CreditCard(this.name, this.expr, this.number, this.cvv, this.creditLimit, this.color);

}

List<CreditCard> cards = [
  CreditCard('John Smith', '09/25', '4231 0000 0000 1001', '123', '\$ 1500', card1),
  CreditCard('Karen Paul', '02/19', '4231 0000 0000 2002', '456', '\$ 2500', card2),
  CreditCard('Jerry Chen', '04/22', '4231 0000 0000 3003', '789', '\$ 500', card3),
];