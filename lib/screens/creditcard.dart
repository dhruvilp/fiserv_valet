class CreditCard {

  String name;
  String expr;
  String number;
  String cvv;
  String creditLimit;

  CreditCard(this.name, this.expr, this.number, this.cvv, this.creditLimit);

}

List<CreditCard> cards = [
  CreditCard('John Smith', '09/2025', '4231 0000 0000 0001', '123', '1500'),
  CreditCard('Maria Mitchell', '02/2019', '4231 0000 0000 0002', '456', '2500'),
  CreditCard('Danielle George', '04/2022', '4231 0000 0000 0003', '789', '500'),
];