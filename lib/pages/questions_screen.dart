import 'package:flutter/material.dart';
import 'package:mac_p2_first_page/widget/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "gnfjyujyff",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'answerText1', onTap: () {}),
          AnswerButton(answerText: 'answerText2', onTap: () {}),
          AnswerButton(answerText: 'answerText3', onTap: () {}),
          AnswerButton(answerText: 'answerText4', onTap: () {}),
        ],
      ),
    );
  }
}
