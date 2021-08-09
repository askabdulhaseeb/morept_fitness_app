import 'package:flutter/material.dart';
import 'package:morept_fitness_app/models/questions.dart';
import 'package:morept_fitness_app/providers/questions_providers.dart';
import 'package:morept_fitness_app/screens/auth/questionsScreens/multi_step_2.dart';
import 'package:morept_fitness_app/screens/widgets/back_to_previous_page.dart';
import 'package:morept_fitness_app/screens/widgets/custom_radio_button.dart';
import 'package:morept_fitness_app/screens/widgets/header_text_for_questions.dart';
import 'package:morept_fitness_app/screens/widgets/light_black_bg.dart';
import 'package:provider/provider.dart';

class MultiStep1 extends StatelessWidget {
  const MultiStep1({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep1';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    final List<Questions> question = provider.getQuestion1();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            const HeaderTextForQuestions(title: 'Select your area'),
            LightBlackBackgroundContainer(
              child: Column(
                children: <Widget>[
                  CustomRadioButton(
                    value: question[0].id,
                    groupValue: provider.q1,
                    onChange: (String? value) {
                      provider.onChangeQ1(value);
                      Navigator.of(context).pushNamed(MultiStep2.routeName);
                    },
                    title: question[0].title,
                  ),
                  CustomRadioButton(
                    value: question[1].id,
                    groupValue: provider.q1,
                    onChange: (String? value) {
                      provider.onChangeQ1(value);
                      Navigator.of(context).pushNamed(MultiStep2.routeName);
                    },
                    title: question[1].title,
                  ),
                  CustomRadioButton(
                    value: question[2].id,
                    groupValue: provider.q1,
                    onChange: (String? value) {
                      provider.onChangeQ1(value);
                      Navigator.of(context).pushNamed(MultiStep2.routeName);
                    },
                    title: question[2].title,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}