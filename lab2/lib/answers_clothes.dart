import 'package:flutter/material.dart';

class AnswersClothes extends StatelessWidget {
  final String text;
  final Function() fun;
  AnswersClothes(this.fun, this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: this.fun,
        child: Text(
          this.text,
          style: TextStyle(color: Colors.red),),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
      ),
    );
  }
}