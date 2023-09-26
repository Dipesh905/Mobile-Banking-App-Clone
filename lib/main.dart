import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/view/screeens/login_page.dart';
import 'package:mobile_banking_app/view/screeens/main_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
        home: MainScreen());
  }
}
