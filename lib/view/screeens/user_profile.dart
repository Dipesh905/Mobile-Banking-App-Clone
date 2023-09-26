import 'package:flutter/material.dart';
import 'package:mobile_banking_app/view/screeens/login_page.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                //  radius: 80,
                child: Text("DG"),
              ),
              title: Text("Dipesh Ghimire"),
              subtitle: Text("987654321"),
            ),
            Card(
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      "Account Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Dipesh Ghimire"),
                  ),
                  ListTile(
                    title: Text(
                      "Account Number",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("096726252726373"),
                  ),
                  ListTile(
                    title: Text(
                      "Account Type",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Saving Normal"),
                  ),
                  ListTile(
                    title: Text(
                      "Account Currency",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("NPR"),
                  ),
                  ListTile(
                    title: Text(
                      "Accrued Interest",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("1,282"),
                  ),
                  ListTile(
                    title: Text(
                      "Interest Rate",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("3.05"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
