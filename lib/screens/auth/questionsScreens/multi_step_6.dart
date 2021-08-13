import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/questions.dart';
import '../../../providers/questions_providers.dart';
import '../../auth/questionsScreens/multi_step_7.dart';
import '../../widgets/back_to_previous_page.dart';
import '../../widgets/custom_progress_line.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/header_text_for_questions.dart';
import '../../widgets/light_black_bg.dart';

class MultiStep6 extends StatelessWidget {
  const MultiStep6({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep6';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    final List<Questions> question = provider.getQuestion6();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            const CustomProgressLine(pageNumber: 6, totalPages: 7),
            HeaderTextForQuestions(title: provider.getQuestion6Title()),
            LightBlackBackgroundContainer(
              child: Column(
                children: <Widget>[
                  for (Questions data in question)
                    CustomRadioButton(
                      value: data.id,
                      groupValue: provider.q6,
                      onChange: (String? value) {
                        provider.onChangeQ6(value);
                        Navigator.of(context).pushNamed(MultiStep7.routeName);
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
