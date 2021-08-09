import 'package:flutter/material.dart';

class HeaderTextForQuestions extends StatelessWidget {
  const HeaderTextForQuestions({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
        fontSize: size.width * 0.06,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
