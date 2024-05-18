import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  XylophoneApp({super.key});

  int noteNumber = 0;
  void playSound(int a) {
    final player = AudioPlayer();
    player.play(AssetSource('note$a.wav'));
  }
  Expanded buildKey(Color color, int note) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          noteNumber = note;
          playSound(noteNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.green.shade900, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
