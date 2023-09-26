import 'package:flutter/material.dart';

class MerchantPayment extends StatelessWidget {
  const MerchantPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Merchant Payment"),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    "Dispute Lodge",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Invoice History",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Complain",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Activity Log",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Settings",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text("Alert Log",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
