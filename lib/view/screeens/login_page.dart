import 'package:flutter/material.dart';
import 'package:mobile_banking_app/controller/consts/colors.dart';
import 'package:mobile_banking_app/view/screeens/home_page.dart';
import 'package:mobile_banking_app/view/widgets/connect_with_us_card.dart';
import 'package:mobile_banking_app/view/widgets/digital_payment_method.dart';
import 'package:mobile_banking_app/view/widgets/image_slider_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool remember = false;

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
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: (BoxDecoration(
            gradient: AppColor.gradientColor,
          )),
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
                        const TextField(
                          decoration:
                              InputDecoration(hintText: "Mobile Number"),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: remember,
                                onChanged: (val) {
                                  setState(() {
                                    remember = val!;
                                  });
                                }),
                            const Text("Remember Mobile Number ")
                          ],
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.92,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              }));
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
                            )
                          ],
                        ),
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
    );
  }
}
