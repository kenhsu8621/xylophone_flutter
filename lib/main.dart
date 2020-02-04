import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void words() {
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color, String note}) {
    return Expanded(
      child: FlatButton(
          onPressed: (){
            playSound(soundNumber);
          },
          color: color,
          child: Text('$note',style: TextStyle(color: Colors.white),)
      ),
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
              buildKey(soundNumber: 1, color: Colors.red, note:'Do'),
              buildKey(soundNumber: 2, color: Colors.orange, note:'Re'),
              buildKey(soundNumber: 3, color: Colors.yellow, note:'Mi'),
              buildKey(soundNumber: 4, color: Colors.green, note:'Fa'),
              buildKey(soundNumber: 5, color: Colors.blue, note:'So'),
              buildKey(soundNumber: 6, color: Colors.indigo, note:'La'),
              buildKey(soundNumber: 7, color: Colors.deepPurpleAccent, note:'Si'),
            ],
          ),
        ),
      ),
    );
  }
}
