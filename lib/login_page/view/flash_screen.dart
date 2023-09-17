import 'package:ambu_kamran/constants/contants.dart';
import 'package:ambu_kamran/login_page/view/map.dart';
//import 'package:ambu_kamran/login_page/view/login_register.dart';
import 'package:ambu_kamran/login_page/view/welcome.dart';
//import 'package:ambu_kamran/main.dart';
import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  FlashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Simulate a delay for the splash screen (e.g., 2 seconds)
    Future<void>.delayed(const Duration(seconds: 5), () {
      // Navigate to the main screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const MapPage()),
      );
    });

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.asset(LoginAssets.ambulance1,
                        height: 100, width: 100),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            )),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
