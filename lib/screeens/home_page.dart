import 'package:flutter/material.dart';
import 'package:mobile_banking_app/model/quick_link_model.dart';
import 'package:mobile_banking_app/screeens/add_button_page.dart';
import 'package:mobile_banking_app/screeens/favourite_account.dart';
import 'package:mobile_banking_app/screeens/full_statement.dart';
import 'package:mobile_banking_app/screeens/merchant_payment.dart';
import 'package:mobile_banking_app/screeens/my_account_page.dart';
import 'package:mobile_banking_app/screeens/user_profile.dart';
import 'package:mobile_banking_app/widgets/quick_link_widget.dart';

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
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                children: [
                  const YourBalanaceSection(),
                  const QuickLinks(),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "ACCOUNT ACTIVITIES",
                        style: TextStyle(color: Colors.white),
                      ),
                      Card(
                        child: ListTile(
                          title: Text("Mobile Banking Annual fee"),
                          subtitle: Text("Dec 26, 2021"),
                          trailing: Text(
                            "300",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text("MERO SHARE RENEWED"),
                          subtitle: Text("Dec 06, 2021"),
                          trailing: Text(
                            "300",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text("Dipesh Ghimire"),
                          subtitle: Text("Dec 10, 2021"),
                          trailing: Text(
                            "1000",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.red.shade800,
                Colors.red.shade500,
                Colors.brown.shade400,
                Colors.blue.shade400,
                Colors.blue.shade600,
                Colors.blue.shade900,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            )
          ],
        ),
      ),
    );
  }
}

class QuickLinksCard extends StatelessWidget {
  const QuickLinksCard({required this.title, required this.icon, this.onTap});

  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              title,
              style: const TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}

class YourBalanaceSection extends StatelessWidget {
  const YourBalanaceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.height * 0.3,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "YOUR BALANCE",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "NPR",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1,23,456",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.height * 0.12,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
              Center(
                  child: Divider(
                color: Colors.white,
              )),
              Icon(
                Icons.book,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
