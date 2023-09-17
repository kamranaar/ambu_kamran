import 'package:flutter/material.dart';

//import 'login_page/view/login_register.dart';
import 'login_page/view/flash_screen.dart';

//import 'package:flutter/material.dart';
//import 'flash_screen.dart'; // Import your FlashScreen widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/splash', // Set the initial route to '/splash'
      routes: {
        '/splash': (context) =>
            FlashScreen(), // FlashScreen is the initial route
        '/home': (context) =>
            const MyHomePage(), // Example: Main content of your app
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
