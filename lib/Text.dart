import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  final String displayText;

  TextContent(this.displayText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        displayText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
