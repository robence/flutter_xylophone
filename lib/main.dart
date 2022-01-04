import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

typedef PlayNoteFunction = void Function(int noteNumber);

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache audioPlayer = AudioCache();

    void playNote(int noteNumber) {
      audioPlayer.play('note$noteNumber.wav');
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            PlayfulColor(onPress: playNote, noteNumber: 1, color: Colors.red),
            PlayfulColor(
                onPress: playNote, noteNumber: 2, color: Colors.orange),
            PlayfulColor(
                onPress: playNote, noteNumber: 3, color: Colors.yellow),
            PlayfulColor(onPress: playNote, noteNumber: 4, color: Colors.green),
            PlayfulColor(onPress: playNote, noteNumber: 5, color: Colors.teal),
            PlayfulColor(onPress: playNote, noteNumber: 6, color: Colors.blue),
            PlayfulColor(
                onPress: playNote, noteNumber: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}

class PlayfulColor extends StatelessWidget {
  final MaterialColor color;
  final int noteNumber;
  final PlayNoteFunction onPress;

  const PlayfulColor(
      {Key? key,
      required this.color,
      required this.noteNumber,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          onPress(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
