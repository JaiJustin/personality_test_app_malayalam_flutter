import 'package:flutter/material.dart';

import './QuizPage/homePage.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personalty test app Malayalam',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
