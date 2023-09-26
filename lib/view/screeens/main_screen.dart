import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_banking_app/controller/provider/main_screen_provider.dart';
import 'package:mobile_banking_app/view/screeens/add_button_page.dart';
import 'package:mobile_banking_app/view/screeens/favourite_account.dart';
import 'package:mobile_banking_app/view/screeens/full_statement.dart';
import 'package:mobile_banking_app/view/screeens/home_screen.dart';
import 'package:mobile_banking_app/view/screeens/merchant_payment.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  final List tabs = const [
    HomeScreen(),
    FavouriteAccount(),
    AddButtonPage(),
    FullStatement(),
    MerchantPayment(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentlySelectedIndex = ref.watch(currentlySelectedIndexProvider);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentlySelectedIndex,
            onTap: (value) {
              ref
                  .read(currentlySelectedIndexProvider.notifier)
                  .update((state) => value);
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
        body: tabs[currentlySelectedIndex]);
  }
}
