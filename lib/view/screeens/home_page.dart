import 'package:flutter/material.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/view/screeens/add_button_page.dart';
import 'package:mobile_banking_app/view/screeens/favourite_account.dart';
import 'package:mobile_banking_app/view/screeens/full_statement.dart';
import 'package:mobile_banking_app/view/screeens/merchant_payment.dart';
import 'package:mobile_banking_app/view/screeens/user_profile.dart';
import 'package:mobile_banking_app/view/widgets/account_activity_widget.dart';
import 'package:mobile_banking_app/view/widgets/quick_link_widget.dart';
import 'package:mobile_banking_app/view/widgets/your_balance_section.dart';

class BottomNavigationBarHome extends StatefulWidget {
  const BottomNavigationBarHome({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarHomeState createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  int _currentindex = 0;

  List tabs = const [
    HomePageBody(),
    FavouriteAccount(),
    AddButtonPage(),
    FullStatement(),
    MerchantPayment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            onTap: (value) {
              setState(() {
                _currentindex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Fav account"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book), label: "Statement"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: "Others"),
            ]),
        body: tabs[_currentindex]);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BottomNavigationBarHome());
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
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
              child: Column(
                children: const [
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
