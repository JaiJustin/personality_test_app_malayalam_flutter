import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 7))
        ],
      ),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, fontFamily: 'BalooChettan'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
