import 'package:flutter/material.dart';

void main() {
  runApp(lab1());
}

class lab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Hristijan Stojanov 191257",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Lab1"),
          ),
          body: const Center(
            child: Text(
              "Hristijan Stojanov 191257",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          backgroundColor: Colors.greenAccent,
        ),
      );
}
