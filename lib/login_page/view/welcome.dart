//import 'package:ambu_kamran/login_page/view/login_register.dart';
import 'package:flutter/material.dart';
import '../../constants/login_assets.dart';
import 'map.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(172, 237, 255, 1),
      ),
      body: Container(
        color: Color.fromARGB(255, 91, 157, 16), // Added red background
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Image.asset(
                  LoginAssets.ambulance1,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromRGBO(172, 237, 255, 1),
                child: const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.blue,
                    fontFamily: 'Roboto', // font family
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  LoginAssets.ambulance2,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: const Text(
                  "Call your ambulance at doorstep\n     Live ambulance tracker\n         Blood Donation\n     Sudden admit in hospital",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(137, 187, 254, 1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(fontSize: 20)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MapPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'PROCEED',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
