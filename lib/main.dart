import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 68, 53, 72), Color.fromARGB(255, 140, 43, 220)),
      ),
    ),
  );
}
