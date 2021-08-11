import 'package:flutter/material.dart';
import 'package:morept_fitness_app/models/questions.dart';
import 'package:morept_fitness_app/providers/questions_providers.dart';
import 'package:provider/provider.dart';

class CustomProgressLine extends StatelessWidget {
  const CustomProgressLine(
      {required this.pageNumber, required this.totalPages, Key? key})
      : super(key: key);
  final int pageNumber;
  final int totalPages;
  @override
  Widget build(BuildContext context) {
    final QuestionsProvider provider = Provider.of<QuestionsProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text('q1'),
                  Text(provider.q1),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('q2'),
                  Text(provider.q2),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('q3'),
                  Text(provider.q3),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('q4'),
                  Text(provider.q4),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('q5'),
                  Text(provider.q5),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('q6'),
                  Text(provider.q6),
                ],
              ),
              Column(
                children: <Widget>[
                  const Text('q7'),
                  Text(provider.q7),
                ],
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width *
                    (pageNumber / totalPages),
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text('$pageNumber/$totalPages'),
          ),
        ],
      ),
    );
  }
}
