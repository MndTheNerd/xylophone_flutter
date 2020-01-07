import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({int noteNum, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            //adding all the buttons with onPressed playing each note
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(noteNum: 1, color: Colors.red),
                buildKey(noteNum: 2, color: Colors.orange),
                buildKey(noteNum: 3, color: Colors.yellow),
                buildKey(noteNum: 4, color: Colors.green),
                buildKey(noteNum: 5, color: Colors.teal),
                buildKey(noteNum: 6, color: Colors.blue),
                buildKey(noteNum: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
