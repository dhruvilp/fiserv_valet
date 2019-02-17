import 'package:fiserv_valet/screens/creditcard.dart';
import 'package:flutter/material.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:flip_card/flip_card.dart';

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
                    color: card.color,
                    shape: BoxShape.rectangle,
                    borderRadius: new BorderRadius.circular(10.0),
                    boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: white,
                            blurRadius: 3.0,
                            spreadRadius: 0.5,
                            offset: new Offset(0.0, 2.0)),
                    ],
                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, top: 10.0, bottom: 0.0),
                          child: new Text('BANK',
                              style: const TextStyle(fontSize: 20.0, color: white),
                              textAlign: TextAlign.center)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 5.0, bottom: 0.0),
                        child: Image.asset('assets/images/chip.png', width: 55, height:55,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, bottom: 10.0, top: 5.0),
                        child: new Text(card.number,
                            style: const TextStyle(fontSize: 25.0, color: white, letterSpacing: 3.0),
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0, bottom: 0.0, top: 0.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: new Text('EXPR', style: TextStyle(color: white, fontSize: 10,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: new Text(card.expr, style: TextStyle(color: white, fontSize: 16,),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, bottom: 10.0, top: 5.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0, bottom: 0.0),
                              child: new Text(card.name, style: const TextStyle(fontSize: 20.0, color: white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 110.0, bottom: 5.0, top: 5.0),
                              child: new Text('VISA', style: const TextStyle(fontSize: 40.0, color: white, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList()),
      );
  }
}
