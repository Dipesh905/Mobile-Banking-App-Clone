import 'package:flutter/material.dart';

class CircleAvatarCard extends StatelessWidget {
  CircleAvatarCard({required this.cardTitle, required this.cardicon});

  final String cardTitle;
  final IconData cardicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(
              cardicon,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(cardTitle),
          )
        ],
      ),
    );
  }
}
