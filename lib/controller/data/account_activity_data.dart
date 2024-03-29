import 'package:flutter/material.dart';
import 'package:mobile_banking_app/model/account_activity_model.dart';

List<AccountActivityModel> accountActivityList = [
  AccountActivityModel(
      title: 'Mobile Banking Annual Fee',
      amount: 350,
      date: 'Dec 26, 2021',
      textColor: Colors.red),
  AccountActivityModel(
      title: 'Atm withdrawal',
      amount: 5000,
      date: 'Dec 28, 2021',
      textColor: Colors.red),
  AccountActivityModel(
      title: 'MERO SHARE Renewed',
      amount: 50,
      date: 'Dec 29, 2021',
      textColor: Colors.red),
  AccountActivityModel(
      title: 'Deposited By Dipesh',
      amount: 3500,
      date: 'Dec 30, 2021',
      textColor: Colors.green),
];
