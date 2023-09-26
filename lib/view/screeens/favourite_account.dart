import 'package:flutter/material.dart';
import 'package:mobile_banking_app/view/screeens/add_favourite_account.dart';

class FavouriteAccount extends StatefulWidget {
  const FavouriteAccount({Key? key}) : super(key: key);

  @override
  _FavouriteAccountState createState() => _FavouriteAccountState();
}

class _FavouriteAccountState extends State<FavouriteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddFavouriteAccount();
          }));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Linked Account"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Center(child: Text("No Data Found"))],
      ),
    );
  }
}
