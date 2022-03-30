import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_banking_app/pages/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool remember = false;
  List imgList = [
    "assets/bhaktapurdurbar.jpg",
    "assets/Pashupatinath.jpg",
    "assets/pokhara.jpg",
    "assets/Sarankot.jpg"
  ];

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
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: (BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.red.shade800,
                Colors.red.shade500,
                Colors.red.shade200,
                Colors.blue.shade400,
                Colors.blue.shade600,
                Colors.blue.shade900,
              ]))),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.fingerprint,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              child: Text(
                                "Tap to Login With Fingerprint",
                              ),
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Text("Unable to Login? tap Here!")
                      ],
                    ),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                  ),
                  items: imgList
                      .map((item) => Center(
                          child: Image.asset(item,
                              fit: BoxFit.fill,
                              height: 180,
                              width: double.infinity)))
                      .toList(),
                ),
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
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Connect With Us",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.facebook)),
                    ),
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.twitter)),
                    ),
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.linkedin)),
                    ),
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: const FaIcon(FontAwesomeIcons.instagram)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UseDigitalPaymentmethod extends StatelessWidget {
  const UseDigitalPaymentmethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Use Digital Payment Method'),
                Row(
                  children: const [Text("Load More"), Icon(Icons.arrow_right)],
                ),
              ],
            ),
            SizedBox(
              height: 110,
              width: double.infinity,
              //  color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.electrical_services,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Electricity")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.money,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Revenue")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.airplanemode_on,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Airlines")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.water,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Khanepani")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.open_in_browser,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("ISP")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.tv,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Tv Payment")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.payment,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Insurance")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.bus_alert,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Bus")
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
