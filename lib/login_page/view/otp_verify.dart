import 'package:ambu_kamran/constants/contants.dart';
import 'package:ambu_kamran/login_page/view/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'dart:async'; // Import the dart:async library for using Timer

class OtpVerify extends StatefulWidget {
  bool isOtpValid = false;
  OtpVerify({super.key});

  @override
  _OtpVerifyState createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  int timeCounter = 30; // Initialize the timer counter

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeCounter > 0) {
        setState(() {
          timeCounter--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Text(
                  "Please wait we will auto verify the OTP sent to your Phone Number",
                  style: TextStyle(fontSize: 34),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: OtpTextField(
                  numberOfFields: 4,
                  borderColor: Color.fromARGB(255, 228, 80, 67),
                  // set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  // runs when a code is typed in
                  onCodeChanged: (String code) {
                    // handle validation or checks here
                  },
                  // runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       title: Text("Verification Code"),
                    //       content: Text('Code entered is $verificationCode'),

                    //     );
                    //   },
                    // );
                  }, // end onSubmit
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Text("Auto verify your OTP in $timeCounter seconds"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment(.9, 0),
                child: Image.asset(LoginAssets.otpmen),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 220, 210, .8),
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
                          builder: (context) => Welcome(),
                        ));
                  },
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 28,
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

void main() {
  runApp(MaterialApp(home: OtpVerify()));
}
