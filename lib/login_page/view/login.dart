import 'package:ambu_kamran/login_page/view/otp_verify.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPhoneNumberValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 102, 71, 1),
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        alignment: const Alignment(-1, 0),
                        child: const Text(
                          "ENTER YOUR PHONE NUMBER",
                          style: TextStyle(fontSize: 34),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: const Alignment(-1, 0),
                        child: const Text(
                          "THIS NUMBER IS SHOWN TO ALL CUSTOMERS",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: IntlPhoneField(
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            labelText: 'YOUR NUMBER',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          initialCountryCode: 'IN',
                          onChanged: (phone) {
                            setState(() {
                              isPhoneNumberValid =
                                  phone.completeNumber.length == 13;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 4, child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    //color: Color.fromRGBO(233, 72, 9, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: isPhoneNumberValid
                        ? MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(233, 72, 9, 1))
                        : MaterialStateProperty.all<Color>(
                            Color.fromRGBO(236, 164, 135, 1)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(fontSize: 20)),
                  ),
                  onPressed: isPhoneNumberValid
                      ? () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpVerify()));
                        }
                      : null,
                  child: const Text(
                    'NEXT',
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

void main() {
  runApp(const MaterialApp(home: Login()));
}
