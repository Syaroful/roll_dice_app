import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 3;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/dice$currentDiceRoll.png',
          width: 100,
        ),
        const SizedBox(height: 100),
        TextButton(
            onPressed: rollDice,
            child: const StyledText(
              text: 'Tap to spin',
              fontSize: 16,
              color: Color.fromARGB(255, 110, 110, 110),
            )),
      ],
    );
  }
}
