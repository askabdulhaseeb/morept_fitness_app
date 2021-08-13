import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/questions_providers.dart';
import '../../homeScreen/home_screen.dart';
import '../../widgets/back_to_previous_page.dart';
import '../../widgets/custom_inkwell_button.dart';
import '../../widgets/custom_progress_line.dart';

class MultiStep7 extends StatelessWidget {
  const MultiStep7({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep7';

  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
            const CustomProgressLine(pageNumber: 7, totalPages: 7),
            Text(
              provider.getQuestion7Title(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              provider.getQuestion7(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: CustomInkWellButton(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    HomeScreen.routeName,
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text("Let's Start"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
