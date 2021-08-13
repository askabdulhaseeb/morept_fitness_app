import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/questions_providers.dart';

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
