import 'package:flutter/material.dart';
import 'package:mobile_banking_app/view/screeens/add_favourite_account.dart';

class FavouriteAccount extends StatelessWidget {
  const FavouriteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddFavouriteAccount();
          }));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Linked Account"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("No Data Found"))],
      ),
    );
  }
}
