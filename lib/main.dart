import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded xyloKey({int noteNum, String keyText, Color pColor, Color bColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
        child: Text(keyText),
        style: TextButton.styleFrom(
          primary: pColor,
          backgroundColor: bColor,
        ),
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
              xyloKey(
                  noteNum: 1,
                  keyText: 'Do',
                  pColor: Colors.red[300],
                  bColor: Colors.red),
              xyloKey(
                  noteNum: 2,
                  keyText: 'Re',
                  pColor: Colors.orangeAccent,
                  bColor: Colors.deepOrangeAccent),
              xyloKey(
                  noteNum: 3,
                  keyText: 'Mi',
                  pColor: Colors.yellowAccent,
                  bColor: Colors.amber),
              xyloKey(
                  noteNum: 4,
                  keyText: 'Fa',
                  pColor: Colors.greenAccent,
                  bColor: Colors.green),
              xyloKey(
                  noteNum: 5,
                  keyText: 'Sol',
                  pColor: Colors.tealAccent,
                  bColor: Colors.teal),
              xyloKey(
                  noteNum: 6,
                  keyText: 'La',
                  pColor: Colors.lightBlueAccent,
                  bColor: Colors.blue),
              xyloKey(
                  noteNum: 7,
                  keyText: 'Ti',
                  pColor: Colors.purpleAccent,
                  bColor: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
