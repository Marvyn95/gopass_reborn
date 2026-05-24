import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoPass',
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
