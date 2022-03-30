import 'package:flutter/material.dart';
import 'package:mobile_banking_app/pages/add_button_page.dart';
import 'package:mobile_banking_app/pages/full_statement.dart';
import 'package:mobile_banking_app/pages/merchant_payment.dart';
import 'package:mobile_banking_app/pages/user_profile.dart';

class BottomNavigationBarHome extends StatefulWidget {
  const BottomNavigationBarHome({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarHomeState createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  int _currentindex = 0;

  List tabs = [
    HomePageBody(),
    // FavouriteAccount(),
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
    return Scaffold(body: BottomNavigationBarHome());
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
                  YourBalanaceSection(),
                  QuickLinks(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: Column(
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
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
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
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
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
                    ),
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

class QuickLinks extends StatelessWidget {
  const QuickLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Quick Links",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.32,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return MyAccount();
                        // }));
                      },
                      child: Column(
                        children: const [
                          Icon(
                            Icons.account_balance,
                            color: Colors.red,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My Account",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.credit_card,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.send_to_mobile,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Send Money",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.card_membership,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dispute Lodge",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.book,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Invoice History",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.message,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Complain",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.local_activity,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Activity Log",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.money,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "esewa",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
        )
      ],
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
