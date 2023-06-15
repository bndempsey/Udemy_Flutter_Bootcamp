import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, MaterialStatePropertyAll<Color>(Colors.red)),
              buildKey(2, MaterialStatePropertyAll<Color>(Colors.orange)),
              buildKey(3, MaterialStatePropertyAll<Color>(Colors.yellow)),
              buildKey(4, MaterialStatePropertyAll<Color>(Colors.green)),
              buildKey(5, MaterialStatePropertyAll<Color>(Colors.blue)),
              buildKey(6, MaterialStatePropertyAll<Color>(Colors.indigo)),
              buildKey(7, MaterialStatePropertyAll<Color>(Colors.purple)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildKey(int note, MaterialStatePropertyAll<Color> color){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playNote(note);
        },
        style: ButtonStyle(
            backgroundColor: color
        ),
        child: Text(''),
      ),
    );
  }

  void playNote(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }
}
