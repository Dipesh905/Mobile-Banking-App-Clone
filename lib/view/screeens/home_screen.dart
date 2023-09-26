import 'package:flutter/material.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/view/screeens/user_profile.dart';
import 'package:mobile_banking_app/view/widgets/account_activity_widget.dart';
import 'package:mobile_banking_app/view/widgets/quick_link_widget.dart';
import 'package:mobile_banking_app/view/widgets/your_balance_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const UserProfile();
            }));
          },
          child: const CircleAvatar(
            radius: 20,
            child: Text("DG"),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Machhapunchchhre Bank Limited",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Column(
                children: [
                  YourBalanceSection(),
                  QuickLinks(),
                  AccountActivityWidget()
                ],
              ),
              decoration: BoxDecoration(gradient: AppColor.gradientColor),
            )
          ],
        ),
      ),
    );
  }
}
