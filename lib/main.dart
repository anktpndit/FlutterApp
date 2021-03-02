import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<App> {
  var _questions = [
    'Which continent has the largest area?',
    'Which planet is closed to the Sun?'
  ];
  var _number = 0;

  void _answer() {
    setState(() {
      //changing our state calls the build method and we re-render widgets
      _number++;
    });
    print("Answer 1 has been pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(_questions[_number]),
          RaisedButton(child: Text('Answer 1'), onPressed: _answer),
          RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => {print('Answer 2 pressed!')}),
          RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print('Answer 3 pressed!')}),
        ],
      ),
    ));
  }
}
