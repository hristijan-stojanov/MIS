
import 'package:flutter/material.dart';
import '/model/termin_polaganje.dart';
import 'dart:math';
import '../main.dart';

class Loginform extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<Loginform> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController index = TextEditingController();

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    index.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: firstName,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'First name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: lastName,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Last name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: index,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Index',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextButton(
            onPressed: () {
              setState(() {
                String fName = firstName.text;
                String lName = lastName.text;
                String idx = index.text;
                print('$fName $lName $idx');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return App();
                }));

              });
            },
            child: const Text('Najava'),
          ),
        )
      ],
    );
  }
}
