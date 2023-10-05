import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophoneapp());
}

class Xylophoneapp extends StatelessWidget {
  const Xylophoneapp({Key? key}) : super(key: key);

  void playsound(dynamic soundnumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource("note$soundnumber.wav"),
    );
  }

  Expanded buildkey({color, int soundnumber: 0}) {
    return Expanded(
      child: SizedBox(
        width: 130.9,
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playsound(soundnumber);
          },
          child: Icon(
            Icons.auto_awesome_mosaic,
            color: Colors.black,

          ),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Column(
              children: [
                buildkey(color: Colors.red, soundnumber: 1),
                buildkey(color: Colors.orange, soundnumber: 2),
                buildkey(color: Colors.yellow, soundnumber: 3),
                buildkey(color: Colors.green, soundnumber: 4),
                buildkey(color: Colors.teal, soundnumber: 5),
                buildkey(color: Colors.blue, soundnumber: 6),
                buildkey(color: Colors.purple, soundnumber: 7),

              ],
            ),
            Column(
              children: [
                buildkey(color: Colors.deepPurple.shade700, soundnumber: 7),
                buildkey(color: Colors.brown.shade700, soundnumber: 4),
                buildkey(color: Colors.green.shade900, soundnumber: 5),
                buildkey(color: Colors.blueGrey.shade900, soundnumber: 3),
                buildkey(color: Colors.white, soundnumber: 6),
                buildkey(color: Colors.black38, soundnumber: 2),
                buildkey(color: Colors.amber.shade900, soundnumber: 1),
              ],
            ),
            Column(
              children: [
                buildkey(color: Colors.cyanAccent, soundnumber: 1),
                buildkey(color: Colors.deepOrange, soundnumber: 2),
                buildkey(color: Colors.deepPurple, soundnumber: 3),
                buildkey(color: Colors.greenAccent, soundnumber: 4),
                buildkey(color: Colors.limeAccent, soundnumber: 5),
                buildkey(color: Colors.pinkAccent, soundnumber: 6),
                buildkey(color: Colors.brown, soundnumber: 7),
              ],
            )
          ],
        ),
      ),
    );
  }
}
