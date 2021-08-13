import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/questions.dart';
import '../../../providers/questions_providers.dart';
import '../../auth/questionsScreens/multi_step_3.dart';
import '../../widgets/back_to_previous_page.dart';
import '../../widgets/custom_progress_line.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/header_text_for_questions.dart';
import '../../widgets/light_black_bg.dart';

class MultiStep2 extends StatelessWidget {
  const MultiStep2({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep2';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    final List<Questions> question = provider.getQuestion2();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            const CustomProgressLine(pageNumber: 2, totalPages: 7),
            HeaderTextForQuestions(title: provider.getQuestion2Title()),
            LightBlackBackgroundContainer(
              child: Column(
                children: <Widget>[
                  for (Questions data in question)
                    CustomRadioButton(
                      value: data.id,
                      groupValue: provider.q2,
                      onChange: (String? value) {
                        provider.onChangeQ2(value);
                        Navigator.of(context).pushNamed(MultiStep3.routeName);
                      },
                      title: data.title,
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
