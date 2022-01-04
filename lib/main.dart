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

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: const [
              PlayfulColor(noteNumber: 1, color: Colors.red),
              PlayfulColor(noteNumber: 2, color: Colors.orange),
              PlayfulColor(noteNumber: 3, color: Colors.yellow),
              PlayfulColor(noteNumber: 4, color: Colors.green),
              PlayfulColor(noteNumber: 5, color: Colors.teal),
              PlayfulColor(noteNumber: 6, color: Colors.blue),
              PlayfulColor(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayfulColor extends StatelessWidget {
  final MaterialColor color;
  final int noteNumber;
  const PlayfulColor({Key? key, required this.color, required this.noteNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
