import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int soundNum}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(soundNum);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color:Colors.red, soundNum:1),
                buildKey(color:Colors.orange, soundNum:2),
                buildKey(color:Colors.yellow, soundNum:3),
                buildKey(color:Colors.green, soundNum:4),
                buildKey(color:Colors.blue, soundNum:5),
                buildKey(color:Colors.indigo, soundNum:6),
                buildKey(color:Colors.purple, soundNum:7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
