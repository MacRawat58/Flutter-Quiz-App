import 'package:flutter/material.dart';
import 'package:mac_p2_first_page/pages/home_page.dart';
import 'package:mac_p2_first_page/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const StartPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
