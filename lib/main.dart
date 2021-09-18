import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s Your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Dog'],
    },
    {
      'questionText': 'Who\'s Your favrite Avenger?',
      'answers': ['spiderMan', 'IronMan', 'Hulk', 'Thor']
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print("We have more question!");
    } else {
      print("No More question for now!");
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion(),
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
