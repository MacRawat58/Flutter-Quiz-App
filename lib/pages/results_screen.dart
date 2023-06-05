import 'package:flutter/material.dart';
import 'package:mac_p2_first_page/models/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;


  List<Map<String, Object>>getSummaryData() {
    final List<Map<String, Object>> summary = [];

      for (var i = 0; i < chosenAnswers.length; i++) {
        summary.add({
          'question_index' : i,
          'question' : questions[i].text,
          'correct_answer' : questions[i].answers[0],
          'user_answer' : chosenAnswers[i]  
        });
      }

    return summary;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("You Answerd X out of Y questions correctly!"),
              SizedBox(
                height: 30,
              ),
              Text("List of Answers and Questions..."),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text("Restart Test"))
            ],
          ),
        ));
  }
}
