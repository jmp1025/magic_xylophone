import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// master-delegater that drives the rest of the program
void main() => runApp(XylophoneApp());

// This is the blueprint for the xylophone keys and the player function for
// the key sound.  Without a widget builder, this object does nothing.
class XylophoneApp extends StatelessWidget {
  Expanded xyloKey({int noteNum, String keyText, Color pColor, Color bColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
        child: Text(
          keyText,
          style: TextStyle(
            fontFamily: 'ArchitectsDaughter',
            fontSize: 50.0,
          ),
        ),
        style: TextButton.styleFrom(
          primary: pColor,
          backgroundColor: bColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
      ),
    );
  }

  // This builds the app by running relevant data through XylophoneApp.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // center and stretches the keys to fill the whole screen evenly
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloKey(
                  noteNum: 1,
                  keyText: 'Do',
                  pColor: Colors.red[200],
                  bColor: Colors.red),
              xyloKey(
                  noteNum: 2,
                  keyText: 'Re',
                  pColor: Colors.orange[200],
                  bColor: Colors.orange),
              xyloKey(
                  noteNum: 3,
                  keyText: 'Mi',
                  pColor: Colors.yellow,
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
                  pColor: Colors.blue[200],
                  bColor: Colors.blue),
              xyloKey(
                  noteNum: 7,
                  keyText: 'Ti',
                  pColor: Colors.deepPurple[200],
                  bColor: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
