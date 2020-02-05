import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void words() {}

class XylophoneApp extends StatelessWidget {
  void playSound(String soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.wav');
  }

  Expanded buildKey({String soundNumber, Color color, String note}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: color,
          child: Text(
            '$soundNumber',
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 'C_chord', color: Colors.red, note: 'Do'),
              buildKey(
                  soundNumber: 'G_chord', color: Colors.orange, note: 'Re'),
              buildKey(
                  soundNumber: 'Am_chord', color: Colors.yellow, note: 'Mi'),
              buildKey(soundNumber: 'F_chord', color: Colors.green, note: 'Fa'),
              buildKey(soundNumber: 'Em_chord', color: Colors.blue, note: 'So'),
              buildKey(
                  soundNumber: 'D_chord', color: Colors.indigo, note: 'La'),
              buildKey(
                  soundNumber: 'Am7_chord',
                  color: Colors.deepPurpleAccent,
                  note: 'Si'),
//              buildKey(soundNumber: 1, color: Colors.red, note:'Do'),
//              buildKey(soundNumber: 2, color: Colors.orange, note:'Re'),
//              buildKey(soundNumber: 3, color: Colors.yellow, note:'Mi'),
//              buildKey(soundNumber: 4, color: Colors.green, note:'Fa'),
//              buildKey(soundNumber: 5, color: Colors.blue, note:'So'),
//              buildKey(soundNumber: 6, color: Colors.indigo, note:'La'),
//              buildKey(soundNumber: 7, color: Colors.deepPurpleAccent, note:'Si'),
            ],
          ),
        ),
      ),
    );
  }
}
