import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  AudioCache audioCache = AudioCache();

  void playSoundBy(int number) {
    audioCache.play('note$number.wav');
  }

  Expanded buildNoteButtonWith(int noteNumer, MaterialColor backgroundColor) {
    return Expanded(
                child: FlatButton(
                  color: backgroundColor,
                  child: null,
                  onPressed: () => playSoundBy(noteNumer)
                )
                );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildNoteButtonWith(1, Colors.red),
              buildNoteButtonWith(2, Colors.orange),
              buildNoteButtonWith(3, Colors.yellow),
              buildNoteButtonWith(4, Colors.green),
              buildNoteButtonWith(5, Colors.teal),
              buildNoteButtonWith(6, Colors.blue),
              buildNoteButtonWith(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
