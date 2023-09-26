import 'package:flutter/material.dart';

class MerchantPayment extends StatelessWidget {
  const MerchantPayment({Key? key}) : super(key: key);

  static const List<String> merchantSections = [
    'Dispute Lodge',
    'Invoice History',
    'Complain',
    'Activity Log',
    'Settings',
    'Alert Log'
  ];

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
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      merchantSections[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: merchantSections.length),
          )
        ],
      ),
    );
  }
}
