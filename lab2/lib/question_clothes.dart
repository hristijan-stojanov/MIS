import 'package:flutter/material.dart';

class QuestionClothes extends StatelessWidget {
  final String text;

  QuestionClothes(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, color: Colors.blue),
      ),
    );
  }
}