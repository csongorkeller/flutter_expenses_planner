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
          Column(
              children: transaction.map((singleTransaction) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(singleTransaction.amount
                        .toString()), //have to be converted into String, since Text only accept String instead of double
                  ),
                ],
              ),
            );
          }).toList())
        ],
      ),
    );
  }
}
