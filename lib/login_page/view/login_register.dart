import 'package:ambu_kamran/constants/contants.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(245, 102, 71, 1),
        child: Column(
          children: [
            Expanded(
              flex: 10, // Adjust the flex value to control the height ratio
              child: Container(child: Image.asset(LoginAssets.ambulance1)),
            ),
            Expanded(
              flex: 10,
              child: Container(child: Image.asset(LoginAssets.logo1)),
            ),
            Expanded(
                child: Container(color: const Color.fromRGBO(245, 102, 71, 1))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(241, 220, 210, .8),
                    borderRadius: BorderRadius.circular(20)),
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
                          builder: (context) => const Login(),
                        ));
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 34,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(241, 220, 210, .8),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(fontSize: 20)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 34,
                        fontWeight: FontWeight.w500),
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
