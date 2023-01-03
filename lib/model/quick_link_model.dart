import 'package:flutter/material.dart';

class QuickLinkModel {
  String title;
  IconData icon;
  void Function()? onPressed;

  QuickLinkModel({required this.title, required this.icon, this.onPressed});
}

List<QuickLinkModel> listOfQuickLinks = [
  QuickLinkModel(title: 'My Account', icon: Icons.home),
  QuickLinkModel(title: 'Payment', icon: Icons.credit_card),
  QuickLinkModel(title: 'Send Money', icon: Icons.send_to_mobile),
  QuickLinkModel(title: 'Dispute Lodge', icon: Icons.card_membership),
  QuickLinkModel(title: 'Invoice History', icon: Icons.book),
  QuickLinkModel(title: 'Complain', icon: Icons.message),
  QuickLinkModel(title: 'Settings', icon: Icons.settings),
  QuickLinkModel(title: 'esewa', icon: Icons.money)
];
