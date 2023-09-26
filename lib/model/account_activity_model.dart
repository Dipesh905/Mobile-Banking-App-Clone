import 'package:flutter/material.dart';

class AccountActivityModel {
  String title;
  String date;
  int amount;
  Color textColor;

  AccountActivityModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.textColor});
}
