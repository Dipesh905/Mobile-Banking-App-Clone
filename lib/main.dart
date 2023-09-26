import 'package:flutter/material.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/view/screeens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mobile Banking App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: AppColor.materialBlueColor,
        ),
        home: const LoginScreen());
  }
}
