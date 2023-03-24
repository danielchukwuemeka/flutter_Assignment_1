import 'package:flutter/material.dart';

import './text-control.dart';
import './Text.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Myapp> {
  final _texts = const [
    'This is the first text!',
    'This is the second text!',
  ];

  var _textIndex = 0;

  void _chageText() {
    setState(() {
      _textIndex = _textIndex + 1;
    });
    if (_textIndex < _texts.length) {
      print('there is more text');
    } else {
      print('no more texts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assingment 1'),
        ),
        body: _textIndex < _texts.length
            ? TextControl(
                displayText: _texts,
                textIndex: _textIndex,
                changeText: _chageText,
              )
            : TextContent(
                'There is no more text to display',
              ),
      ),
    );
  }
}
