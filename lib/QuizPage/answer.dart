import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            padding: EdgeInsets.all(3),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[600],
                elevation: 10,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                answerText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'BalooChettan'),
              ),
              onPressed: selectHandler,
            ),
          ),
        ),
      ],
    );
  }
}
