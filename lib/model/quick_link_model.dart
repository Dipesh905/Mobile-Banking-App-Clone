import 'package:flutter/material.dart';

class QuickLinkModel {
  String title;
  IconData icon;
  void Function()? onPressed;

  QuickLinkModel({required this.title, required this.icon, this.onPressed});
}
