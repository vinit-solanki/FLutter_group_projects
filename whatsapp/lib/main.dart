import 'package:flutter/material.dart';
import 'package:whatsapp/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WhatsApp_FBI',
      home:
          /* Scaffold(
        body: Center(
          child: Text('Front Page'),
        ),
      ),*/
          WelcomePage(),
    );
  }
}
