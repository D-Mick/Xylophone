import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color colors, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: colors,
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text('Click me'),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colors: Colors.red.shade300, soundNumber: 1),
              buildKey(colors: Colors.blue.shade300, soundNumber: 2),
              buildKey(colors: Colors.yellow.shade300, soundNumber: 3),
              buildKey(colors: Colors.green.shade300, soundNumber: 4),
              buildKey(colors: Colors.grey.shade300, soundNumber: 5),
              buildKey(colors: Colors.orange.shade300, soundNumber: 6),
              buildKey(colors: Colors.purple.shade300, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
