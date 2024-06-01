import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRolerState();
  }
}

class _DiceRolerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeDiceImage, width: 200),
      const SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Click here to Roll Dice')),
    ]);
  }
}
