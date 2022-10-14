import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int num) async {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        playSound(action);
      },
      child: Text(""),
      style: TextButton.styleFrom(backgroundColor: color),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(color: Color.fromARGB(255, 182, 37, 37), action: 1),
            myButton(color: Color.fromARGB(255, 59, 77, 180), action: 2),
            myButton(color: Color.fromARGB(255, 45, 179, 85), action: 3),
            myButton(color: Color.fromARGB(255, 170, 54, 145), action: 4),
            myButton(color: Color.fromARGB(255, 207, 104, 35), action: 5),
            myButton(color: Color.fromARGB(255, 61, 127, 180), action: 6),
            myButton(color: Color.fromARGB(255, 145, 28, 96), action: 7),
          ],
        ),
      ),
    );
  }
}
