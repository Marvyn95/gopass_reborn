import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'home_page.dart';
import 'event_detail_page.dart';

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
        '/event_detail_page': (context) => EventDetailPage(event: ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>),
      },
    );
  }
}