import 'package:flutter/material.dart';

class DrawingCanvas extends StatelessWidget {
  const DrawingCanvas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 200,
        width: 500,
        child: Card(
          child: Text("Canvas area"),
        ),
      ),
    );
  }
}
