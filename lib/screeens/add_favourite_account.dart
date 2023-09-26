import 'package:flutter/material.dart';
import 'package:mobile_banking_app/consts/colors.dart';

class AddFavouriteAccount extends StatefulWidget {
  const AddFavouriteAccount({Key? key}) : super(key: key);

  @override
  _AddFavouriteAccountState createState() => _AddFavouriteAccountState();
}

class _AddFavouriteAccountState extends State<AddFavouriteAccount> {
  String dropdownvalue = 'Machhapuchhre Bank';
  var items = [
    'Machhapuchhre Bank',
    'Nic Asia Bank',
    'Nabil Bank',
    'Siddhartha Bank',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Add Favourite Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Account Number"),
                    subtitle: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Account Number",
                      ),
                    ),
                  ),
                  const ListTile(
                    subtitle: TextField(
                      decoration: InputDecoration(
                        hintText: "Account Name",
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text("Bank Name"),
                    subtitle: DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.92,
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: AppColor.buttonGradientColor),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
