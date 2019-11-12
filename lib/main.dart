import './transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal expenses',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 'T1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'New T-shirt',
      amount: 39.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal expenses'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              color: Colors.red[100],
              child: Text('CHART'),
              elevation: 5,
            ),
          ),
          Column(                                             //transform the list of transactions to list of cards that outputs transactions
              children: transaction.map((singleTransaction) { // we have to list the single transactions from all transactions
            return Card(
              child: Text(singleTransaction.title),           //we're listing the title of the single transaction
            );
          }).toList()                                         //transaction --> list of widgets by using .map()
              )
        ],
      ),
    );
  }
}
