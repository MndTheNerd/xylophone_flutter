import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
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
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      playNote(1);
                    },
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      playNote(2);
                    },
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playNote(3);
                    },
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      playNote(4);
                    },
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.teal.shade600,
                    onPressed: () {
                      playNote(5);
                    },
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      playNote(6);
                    },
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      playNote(7);
                    },
                    child: Container(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
