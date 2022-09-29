import 'package:flutter/material.dart';
import 'package:sierpinski_triangle/widget/canvas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sierpinski\'s Triangle',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Sierpinski\'s Triangle'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(95, 202, 202, 202),
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: AspectRatio(
            //it is to create a square box
            aspectRatio: 1,
            child: DrawingCanvas(),
          ),
        ),
      ),

      //*button to reset the animation and empty the canvas
      //!Doesn't work
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //TODO: look for a funtion to empty the canvas
        tooltip: 'Reset',
        child: const Icon(Icons.restart_alt),
      ),
    );
  }
}
