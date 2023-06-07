import 'package:flutter/material.dart';
import 'package:mac_p2_first_page/questions_summary/summary_data.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child:
          SingleChildScrollView(child: SummaryData(summaryData: summaryData)),
    );
  }
}
