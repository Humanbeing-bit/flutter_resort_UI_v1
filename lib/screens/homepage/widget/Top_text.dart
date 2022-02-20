import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  final String centerText;

  TopText(this.centerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '$centerText',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
