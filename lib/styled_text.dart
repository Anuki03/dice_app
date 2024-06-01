import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      maxLines: 2,
      style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 40,
          fontStyle: FontStyle.normal),
    );
  }
}
