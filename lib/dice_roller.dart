import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 24,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding:
                const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
            backgroundColor: Color.fromARGB(255, 0, 26, 255),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
