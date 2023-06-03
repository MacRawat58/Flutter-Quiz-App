import 'package:flutter/material.dart';
import 'package:mac_p2_first_page/pages/start_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void handleClicked1() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StartPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "What are the main building blocks of UI's",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              OutlinedButton(
                onPressed: handleClicked1,
                child: const Text(
                  "Functions",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              OutlinedButton(
                onPressed: handleClicked1,
                child: const Text(
                  "Components",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: handleClicked1,
                  child: const Text(
                    "Blocks",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: handleClicked1,
                child: const Text(
                  "Widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
