import 'package:flutter/material.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';

class FullStatement extends StatefulWidget {
  const FullStatement({Key? key}) : super(key: key);

  @override
  _FullStatementState createState() => _FullStatementState();
}

class _FullStatementState extends State<FullStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Full Statement"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Column(
                        children: const [
                          Text("FROM"),
                          Text("Nov 28, 2021"),
                        ],
                      ),
                      subtitle: const Icon(
                        Icons.arrow_right,
                        size: 40,
                      ),
                      trailing: Column(
                        children: const [
                          Text("TO"),
                          Text("Dec 28, 2021"),
                        ],
                      ),
                    ),
                    const ListTile(
                      title: Text("Dipesh Ghimire"),
                      leading: CircleAvatar(
                        child: Text("DG"),
                      ),
                      subtitle: Text("92736262726322262"),
                      trailing: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              height: 40,
              width: MediaQuery.of(context).size.width * 0.92,
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  "View Statement",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: AppColor.buttonGradientColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
