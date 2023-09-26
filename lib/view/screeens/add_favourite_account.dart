import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/view/widgets/input_field_widget.dart';

class AddFavouriteAccount extends StatelessWidget {
  AddFavouriteAccount({Key? key}) : super(key: key);

  final List<String> banks = [
    'Machhapuchhre Bank',
    'Nic Asia Bank',
    'Nabil Bank',
    'Siddhartha Bank',
  ];

  final TextEditingController accountNumberController = TextEditingController();

  final TextEditingController accountNameController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final selectedBankProvider = StateProvider<String>(
    (ref) => 'Machhapuchhre Bank',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Add Favourite Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text("Account Number"),
                      subtitle: InputFieldWidget(
                        keyboardType: TextInputType.number,
                        controller: accountNumberController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: "Account Number",
                        ),
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          } else {
                            return "Account Number can't be empty";
                          }
                        },
                      ),
                    ),
                    ListTile(
                      subtitle: InputFieldWidget(
                        controller: accountNameController,
                        decoration: const InputDecoration(
                          hintText: "Account Name",
                        ),
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          } else {
                            return "Account Name can't be empty";
                          }
                        },
                      ),
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        final selectedBank = ref.watch(selectedBankProvider);
                        return Column(
                          children: [
                            ListTile(
                              title: const Text("Bank Name"),
                              subtitle: DropdownButton(
                                value: selectedBank,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: banks.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  ref
                                      .read(selectedBankProvider.notifier)
                                      .update((state) => newValue!);
                                },
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.92,
                              child: MaterialButton(
                                onPressed: () {
                                  if (_key.currentState!.validate()) {
                                    showDialog(
                                      context: context,
                                      builder: (context) => const AlertDialog(
                                        backgroundColor: Colors.green,
                                        title: Center(child: Text("Sucess")),
                                        content: Text(
                                            'You have sucessfully added your favourite account'),
                                      ),
                                    );

                                    accountNameController.clear();
                                    accountNumberController.clear();
                                    ref.invalidate(selectedBankProvider);
                                  }
                                },
                                child: const Text(
                                  "SUBMIT",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: AppColor.buttonGradientColor),
                            ),
                          ],
                        );
                      },
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
      ),
    );
  }
}
