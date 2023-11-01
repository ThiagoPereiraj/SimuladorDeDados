import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceRollApp(),
    );
  }
}

class DiceRollApp extends StatefulWidget {
  @override
  _DiceRollAppState createState() => _DiceRollAppState();
}

class _DiceRollAppState extends State<DiceRollApp> {
  List<int> diceValues = [1, 1];

  void _rollDice() {
    setState(() {
      diceValues[0] = Random().nextInt(6) + 1;
      diceValues[1] = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('assets/dice${diceValues[0]}.png',
                      width: 100, height: 100),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('assets/dice${diceValues[1]}.png',
                      width: 100, height: 100),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _rollDice,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 27, 27, 27)),
              ),
              child: Text('Jogar Dados'),
            ),
          ],
        ),
      ),
    );
  }
}
