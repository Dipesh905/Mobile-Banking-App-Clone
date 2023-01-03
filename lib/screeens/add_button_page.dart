import 'package:flutter/material.dart';

class AddButtonPage extends StatelessWidget {
  const AddButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            const Text(
              "SCAN TO SEND/RECEIVE MONEY",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: IconButton(
                icon: const Icon(
                  Icons.qr_code_scanner,
                  color: Colors.red,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      "PAYMENTS",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: IconButton(
                        icon: const Icon(
                          Icons.payment,
                          color: Colors.red,
                          size: 35,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "SEND MONEY",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: IconButton(
                        icon: const Icon(
                          Icons.send_to_mobile,
                          color: Colors.red,
                          size: 35,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
