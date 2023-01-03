import 'package:flutter/material.dart';

class AddFavouriteAccount extends StatefulWidget {
  const AddFavouriteAccount({Key? key}) : super(key: key);

  @override
  _AddFavouriteAccountState createState() => _AddFavouriteAccountState();
}

class _AddFavouriteAccountState extends State<AddFavouriteAccount> {
  // Initial Selected Value
  String dropdownvalue = 'Machhapuchhre Bank';

  // List of items in our dropdown menu
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
                        // border: InputBorder.none
                      ),
                    ),
                  ),
                  const ListTile(
                    subtitle: TextField(
                      decoration: InputDecoration(
                        hintText: "Account Name",
                        //  border: InputBorder.none
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text("Bank Name"),
                    subtitle: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
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
                        gradient: LinearGradient(colors: [
                          Colors.red.shade500,
                          Colors.red.shade600,
                          Colors.red.shade800,
                        ])),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Cancel",
                      // style: TextStyle(color: Colors.white),
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
