import 'package:flutter/material.dart';
import 'package:mobile_banking_app/view/screeens/login_page.dart';
import 'package:mobile_banking_app/view/widgets/list_tile_card_widget.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text("DG"),
              ),
              title: Text("Dipesh Ghimire"),
              subtitle: Text("987654321"),
            ),
            Card(
              child: Column(
                children: [
                  ListTileCardWidget(
                      title: 'Account Name', subtitle: 'Dipesh Ghimire'),
                  ListTileCardWidget(
                      title: 'Account Number',
                      subtitle: '13212323423441541343'),
                  ListTileCardWidget(
                      title: 'Account Type', subtitle: 'Saving Normal'),
                  ListTileCardWidget(
                      title: 'Account Currency', subtitle: 'NPR'),
                  ListTileCardWidget(
                      title: 'Accrued Interest', subtitle: '1,282'),
                  ListTileCardWidget(title: 'Interest Rate', subtitle: '3.05'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
