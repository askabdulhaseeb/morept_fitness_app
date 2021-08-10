import 'package:flutter/material.dart';
import 'package:morept_fitness_app/models/questions.dart';
import 'package:morept_fitness_app/providers/questions_providers.dart';
import 'package:morept_fitness_app/screens/auth/questionsScreens/multi_step_4.dart';
import 'package:morept_fitness_app/screens/widgets/back_to_previous_page.dart';
import 'package:morept_fitness_app/screens/widgets/custom_radio_button.dart';
import 'package:morept_fitness_app/screens/widgets/header_text_for_questions.dart';
import 'package:morept_fitness_app/screens/widgets/light_black_bg.dart';
import 'package:provider/provider.dart';

class MultiStep3 extends StatelessWidget {
  const MultiStep3({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep3';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    final List<Questions> question = provider.getQuestion3();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            HeaderTextForQuestions(title: provider.getQuestion3Title()),
            LightBlackBackgroundContainer(
              child: Column(
                children: <Widget>[
                  for ( var data in question ) 
                  CustomRadioButton(
                    value: data.id,
                    groupValue: provider.q3,
                    onChange: (String? value) {
                      provider.onChangeQ4(value);
                      Navigator.of(context).pushNamed(MultiStep4.routeName);
                    },
                    title: data.title,
                  ),
                  // CustomRadioButton(
                  //   value: question[0].id,
                  //   groupValue: provider.q3,
                  //   onChange: (String? value) {
                  //     provider.onChangeQ3(value);
                  //     Navigator.of(context).pushNamed(MultiStep4.routeName);
                  //   },
                  //   title: question[0].title,
                  // ),
                  // CustomRadioButton(
                  //   value: question[1].id,
                  //   groupValue: provider.q3,
                  //   onChange: (String? value) {
                  //     provider.onChangeQ3(value);
                  //     Navigator.of(context).pushNamed(MultiStep4.routeName);
                  //   },
                  //   title: question[1].title,
                  // ),
                  // CustomRadioButton(
                  //   value: question[2].id,
                  //   groupValue: provider.q3,
                  //   onChange: (String? value) {
                  //     provider.onChangeQ3(value);
                  //     Navigator.of(context).pushNamed(MultiStep4.routeName);
                  //   },
                  //   title: question[2].title,
                  // ),
                  // if (provider.q2 == '2')
                  //   CustomRadioButton(
                  //     value: question[3].id,
                  //     groupValue: provider.q3,
                  //     onChange: (String? value) {
                  //       provider.onChangeQ3(value);
                  //       Navigator.of(context).pushNamed(MultiStep4.routeName);
                  //     },
                  //     title: question[3].title,
                  //   ),
                  // if (provider.q2 == '2')
                  //   CustomRadioButton(
                  //     value: question[4].id,
                  //     groupValue: provider.q3,
                  //     onChange: (String? value) {
                  //       provider.onChangeQ3(value);
                  //       Navigator.of(context).pushNamed(MultiStep4.routeName);
                  //     },
                  //     title: question[4].title,
                  //   ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
