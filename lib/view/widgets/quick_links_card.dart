import 'package:flutter/material.dart';

class QuickLinksCard extends StatelessWidget {
  const QuickLinksCard(
      {super.key, required this.title, required this.icon, this.onTap});

  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              title,
              style: const TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
