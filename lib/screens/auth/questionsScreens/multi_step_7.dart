import 'package:flutter/material.dart';
import 'package:morept_fitness_app/models/questions.dart';
import 'package:morept_fitness_app/providers/questions_providers.dart';
import 'package:morept_fitness_app/screens/widgets/back_to_previous_page.dart';
import 'package:morept_fitness_app/screens/widgets/custom_progress_line.dart';
import 'package:morept_fitness_app/screens/widgets/header_text_for_questions.dart';
import 'package:provider/provider.dart';

class MultiStep7 extends StatelessWidget {
  const MultiStep7({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep7';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    // final List<Questions> question = provider.getQuestion7();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            const CustomProgressLine(pageNumber: 7, totalPages: 7),
            HeaderTextForQuestions(title: provider.getQuestion7Title()),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Text(provider.getQuestion7()),
            )
          ],
        ),
      ),
    );
  }
}
