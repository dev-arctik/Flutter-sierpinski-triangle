import 'dart:ui';
import 'package:flutter/material.dart';

class DrawingCanvas extends StatelessWidget {
  const DrawingCanvas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CustomPaint(
        //CustomPaint widget allows us to draw our custom shape. For more info check flutter docs
        size: const Size(
            double.infinity, double.infinity), //for max size as possible
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  //here you add code to draw
  @override
  void paint(Canvas canvas, Size size) {
    final dotPainter = Paint() //dotPainter is our Pen to draw
      ..color = Colors.black //..color is equivalent to dotPainter.color
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    //drawing the vertices of triangle
    const triangleVertices = PointMode.points;
    double verticePadding =
        size.width * 0.1; //to give some space from egde of canvas
    List verticeCoordinates = [
      [size.width / 2, verticePadding], //top vertix
      [verticePadding, size.height - verticePadding], //left vertix
      [
        size.width - verticePadding,
        size.height - verticePadding
      ], //right vertix
    ];
    final drawVerticeCoordinates = [
      Offset(verticeCoordinates[0][0], verticeCoordinates[0][1]),
      Offset(verticeCoordinates[1][0], verticeCoordinates[1][1]),
      Offset(verticeCoordinates[2][0], verticeCoordinates[2][1]),
    ];
    canvas.drawPoints(
        triangleVertices, drawVerticeCoordinates, dotPainter); //plot vertices
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
