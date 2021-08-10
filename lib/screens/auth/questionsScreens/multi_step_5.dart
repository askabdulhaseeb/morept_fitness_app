import 'package:flutter/material.dart';
import 'package:morept_fitness_app/models/questions.dart';
import 'package:morept_fitness_app/providers/questions_providers.dart';
import 'package:morept_fitness_app/screens/auth/questionsScreens/multi_step_6.dart';
import 'package:morept_fitness_app/screens/widgets/back_to_previous_page.dart';
import 'package:morept_fitness_app/screens/widgets/custom_radio_button.dart';
import 'package:morept_fitness_app/screens/widgets/header_text_for_questions.dart';
import 'package:morept_fitness_app/screens/widgets/light_black_bg.dart';
import 'package:provider/provider.dart';

class MultiStep5 extends StatelessWidget {
  const MultiStep5({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep5';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    final List<Questions> question = provider.getQuestion5();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            HeaderTextForQuestions(title: provider.getQuestion5Title()),
            LightBlackBackgroundContainer(
              child: Column(
                children: <Widget>[
                  for (var data in question)
                    CustomRadioButton(
                      value: data.id,
                      groupValue: provider.q3,
                      onChange: (String? value) {
                        provider.onChangeQ4(value);
                        Navigator.of(context).pushNamed(MultiStep6.routeName);
                      },
                      title: data.title,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
