import 'package:flutter/material.dart';

class Transaction { //they're runtime constants, their values never changes
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
      {
      @required this.id,
      @required this.title,
      @required this.amount,
      @required this.date
      });
}
