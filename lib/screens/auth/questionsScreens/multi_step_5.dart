import 'package:flutter/material.dart';
import 'package:morept_fitness_app/screens/widgets/back_to_previous_page.dart';

class MultiStep5 extends StatelessWidget {
  const MultiStep5({Key? key}) : super(key: key);
  static const String routeName = '/MultiStep5';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const BackToPreviousPageWidget(),
          ],
        ),
      ),
    );
  }
}
