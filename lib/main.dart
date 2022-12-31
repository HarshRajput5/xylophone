import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Xylophone(),
  );
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note1.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note2.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note3.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightGreen,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note4.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note5.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note6.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () async {
                      setState(() async {
                        await player.play(
                          AssetSource('note7.wav'),
                        ); // will immediately start playing
                      });
                    },
                    child: const Text(" "),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
