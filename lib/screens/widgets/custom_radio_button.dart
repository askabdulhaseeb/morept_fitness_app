import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    required this.value,
    required this.groupValue,
    required this.onChange,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String value, groupValue, title;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: (String? value) => onChange(value),
        ),
        GestureDetector(
          onTap: () => onChange(value),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
