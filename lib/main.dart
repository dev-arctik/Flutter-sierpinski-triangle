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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: height > width ? width : height,
            height: height > width ? width : height,
            child: const DrawingCanvas(),
          ),
        ),
      ),

      //button to reset the animation and empty the canvas
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Reset',
        child: const Icon(Icons.add),
      ),
    );
  }
}
