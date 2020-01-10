import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './utils/constants.dart';
import './widgets/user_transaction.dart';

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
//User input
/* String titleInput;  //we store here the user input typed 
String amountInput; */

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
          UserTransactions()
        ],
      ),
    );
  }
}
