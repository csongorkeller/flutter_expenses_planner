import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import '../utils/constants.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      //Hardcoded transactions are transformed from a list of transactions to a list of cards
      children: transactions.map((singleTransaction) {
        //singleTransaction is just a pointer
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
    );
  }
}
