import 'package:fiserv_valet/screens/creditcard.dart';
import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';

class CardList extends StatefulWidget {
  @override
  CardListState createState() {
    return new CardListState();
  }
}

class CardListState extends State<CardList> {
  PageController pageController = new PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 250.0,
      width: double.infinity,
      child: new PageView(
          controller: pageController,
          children: cards.map((CreditCard card) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.circular(10.0),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                        color: Colors.black38,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        offset: new Offset(0.0, 2.0)),
                  ],
                ),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                        height: 80.0,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
//                          child: new Image.asset(creditcard.asset, fit: BoxFit.cover),
                        )
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, bottom: 10.0, top: 10.0),
                      child: new Text(card.name,
                          style: const TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.right),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: new Text(card.expr),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
