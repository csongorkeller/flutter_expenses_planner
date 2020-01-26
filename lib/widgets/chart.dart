import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {

final List<Transaction> recentTransactions;

Chart(this.recentTransactions);

 List<Map<String, Object>> get groupedtransactionValues {
   return List.generate(7, (index) { // index is always lower than 7, used because we have 7 days to show
   final weekDay = DateTime.now().subtract(Duration(days: index)); //here we constantly subtract the index as a daynfrom the current time, to get the day for the past 7 days

  var totalSum = 0.0;

  for(var i=0; i<recentTransactions.length; i++) {
    if (recentTransactions[i].date.day == weekDay.day 
    && recentTransactions[i].date.month == weekDay.month 
    && recentTransactions[i].date.year == weekDay.year) {

      totalSum += recentTransactions[i].amount;

    }
    print(DateFormat.E().format(weekDay));
    print(totalSum);
  }

    return {
      'day' : DateFormat.E().format(weekDay),
      'amount': totalSum
    };
   });
 }

  @override
  Widget build(BuildContext context) {
    print(groupedtransactionValues);
    return Card(
      elevation: 6 ,
      margin: EdgeInsets.all(20 ),
      child: Row(
        children: <Widget>[

        ],
      ),
      
    );
  }
}