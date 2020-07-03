import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded builde({Color colors , int n}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          play(n);
        },
        color: colors,
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
              builde(colors: Colors.red, n: 1),
              builde(colors: Colors.orange, n: 2),
              builde(colors: Colors.yellow, n: 3),
              builde(colors: Colors.greenAccent, n: 4),
              builde(colors: Colors.green, n: 5),
              builde(colors: Colors.blue, n: 6),
              builde(colors: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
