import 'package:flutter/material.dart';
import './quiz.dart';
import './Result.dart';
import './questionAndAnswerText.dart';

Color themeColor = Colors.deepOrange[600];

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questionsAndAnswer.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(' PERSONALITY TEST'),
        backgroundColor: Colors.deepOrange[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          _questionIndex < questionsAndAnswer.length
              ? Expanded(
                  child: Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questionsAndAnswer,
                  ),
                )
              : Expanded(child: Result(_totalScore, _resetQuiz)),
        ],
      ),
    );
  }
}
