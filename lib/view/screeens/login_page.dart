import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/controller/provider/login_screen_provider.dart';
import 'package:mobile_banking_app/view/screeens/home_page.dart';
import 'package:mobile_banking_app/view/widgets/connect_with_us_card.dart';
import 'package:mobile_banking_app/view/widgets/digital_payment_method.dart';
import 'package:mobile_banking_app/view/widgets/image_slider_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Machhapunchchhre Bank Limited",
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //  height: MediaQuery.of(context).size.height,
          //  width: double.infinity,
          decoration: (BoxDecoration(
            gradient: AppColor.gradientColor,
          )),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "Welcome to ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Text(
                    "MBL Bank Mobile Banking",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value != null && value.isNotEmpty) {
                                return null;
                              } else {
                                return "Mobile Number can't be empty";
                              }
                            },
                            maxLength: 10,
                            keyboardType: TextInputType.phone,
                            controller: phoneNumberController,
                            decoration: const InputDecoration(
                              hintText: "Mobile Number",
                            ),
                          ),
                          Consumer(
                            builder: (context, ref, child) {
                              final obsecureText =
                                  ref.watch(obsecureTextProvider);

                              return TextFormField(
                                controller: passwordController,
                                obscureText: obsecureText,
                                validator: (value) {
                                  if (value != null && value.isNotEmpty) {
                                    return null;
                                  } else {
                                    return "Password can't be empty";
                                  }
                                },
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        ref
                                            .read(obsecureTextProvider.notifier)
                                            .update(
                                              (state) => !state,
                                            );
                                      },
                                      icon: Icon(obsecureText
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  hintText: "Password",
                                ),
                              );
                            },
                          ),
                          Row(
                            children: [
                              Consumer(
                                builder: (context, ref, child) {
                                  bool isRememberMeChecked =
                                      ref.watch(loginRememberMeProvider);
                                  return Checkbox(
                                      value: isRememberMeChecked,
                                      onChanged: (val) {
                                        ref
                                            .read(loginRememberMeProvider
                                                .notifier)
                                            .update((state) => !state);
                                      });
                                },
                              ),
                              const Text("Remember Mobile Number ")
                            ],
                          ),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.92,
                            child: MaterialButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (phoneNumberController.text ==
                                          '9876543211' &&
                                      passwordController.text == 'P@ssw0rd11') {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const HomePage();
                                    }));
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const AlertDialog(
                                          title: Text('Error Logging In'),
                                          content: Text(
                                              'Phone Number Or Password do not match'),
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                              child: const Text(
                                "LOGIN",
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
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.fingerprint,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: InkWell(
                                  child: Text(
                                    "Tap to Login With Fingerprint",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                '* Note: use 9876543211 for phone number and P@ssw0rd11 for password to log in'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const ImageSliderWidget(),
                  const UseDigitalPaymentmethod(),
                  Container(
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
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ConnectWithUsCard(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
