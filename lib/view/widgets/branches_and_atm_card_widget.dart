import 'package:flutter/material.dart';

class BranchesAndAtmCardWidget extends StatelessWidget {
  const BranchesAndAtmCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.92,
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Branches And ATM's",
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.atm,
                  color: Colors.white,
                  size: 35,
                ))
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [
            Colors.red.shade500,
            Colors.red.shade600,
            Colors.red.shade800,
          ])),
    );
  }
}
