import 'package:flutter/material.dart';

import './Text.dart';

class TextControl extends StatelessWidget {
  final List<String> displayText;
  final int textIndex;
  final VoidCallback changeText;

  TextControl({
    required this.displayText,
    required this.textIndex,
    required this.changeText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextContent(
          displayText[textIndex] as String,
        ),
        ElevatedButton(
          onPressed: changeText,
          child: Text(
            'change text',
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
