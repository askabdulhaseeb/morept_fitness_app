import 'package:flutter/material.dart';
  
Widget _buildTitleWidget(String text) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: const Alignment(-0.9, 0.3),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      );
    }
