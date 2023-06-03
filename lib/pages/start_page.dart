import 'package:flutter/material.dart';

import '../widget/widget_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(
              255,
              53,
              33,
              25,
            ),
            Color.fromRGBO(33, 55, 255, 0.83),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
                width: 300,
              ),
              const SizedBox(
                height: 80,
              ),
              const Text("Learn Flutter the fun way!",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              const MyWidget()
            ],
          ),
        ),
      ),
    );
  }
}
