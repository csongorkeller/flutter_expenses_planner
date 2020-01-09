import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';
import './constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.54,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spendee'),
        backgroundColor: brandRaisinBlack,
      ),
      drawer: Drawer(
        child: Container(
          color: brandRaisinBlack,
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 30,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('CHART'),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    cursorColor: brandRaisinBlack,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    cursorColor: brandRaisinBlack,
                  ),
                  FlatButton(
                    child: Text('Add transaction'),
                    color: primaryColor.withOpacity(0.5),
                    textColor: brandRaisinBlack,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Column(
            //Hardcoded transactions are transformed from a list of transactions to a list of cards
            children: transactions.map((singleTransaction) {
              //singleTransaction is just a pointer
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: brandRaisinBlack,
                        width: 2,
                      )),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$ ' '${singleTransaction.amount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: brandRaisinBlack),
                      ), //Text requires String
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${singleTransaction.title}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: brandRegistrationBlack),
                        ),
                        Text(
                          DateFormat.yMMMd().format(singleTransaction.date),
                          style: TextStyle(color: primaryColor, fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
