import 'package:flutter/material.dart';
import 'question_clothes.dart';
import 'answers_clothes.dart';

void main(){
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var questions = [
    {
      "question": "Brend na farmerki",
      "answers": [
        "Levi's",
        "Wrangler",
        "Diesel",
        "Guess",
        "Calvin Klein",
      ],
    },
    {
      "question": "Brend na bluza",
      "answers": [
        "Tommy Hilfiger",
        "Lacoste",
        "H&M",
        "Zara",
        "Levi's",
        "Calvin Klein",
        "Gucci",

      ],
    },
    {
      "question": "Brend na jakni",
      "answers": [
        "The North Face",
        "Columbia",
        "Patagonia",
        "Moncler",
        "Timberland",
      ]
    },
    {
      "question": "Brend na sporska oprem",
      "answers": [
        "Nike",
        "Adidas",
        "Puma",
        "Under Armour",
      ]
    },

  ];
  var Index = 0;
  void Increment() {
    setState(() {
      if (Index < questions.length - 1) {
        Index += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hristijan Stojanov 191257",
      home: Scaffold(
        appBar: AppBar(
          title: Text("lab 2"),
        ),
        body: Column(
          children: [
            QuestionClothes(questions[Index]['question'] as String),
            ...(questions[Index]['answers'] as List<String>).map((answer) {
              return AnswersClothes(Increment, answer);
            })
          ],
        ),
      ),
    );
  }
}
