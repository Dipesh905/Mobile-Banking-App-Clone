import 'package:flutter/material.dart';
import 'package:mobile_banking_app/pages/home_page.dart';
import 'package:mobile_banking_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mobile Banking App Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen());
  }
}
