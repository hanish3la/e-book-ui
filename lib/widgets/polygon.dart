import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColoredPolygon extends CustomPainter{

  @override

  void paint(Canvas canvas,Size size){
 // var degree = 165;
 // var radiant = degree * math.pi /180;
 // // canvas.rotate(radiant);
    var paint = Paint()
      ..color = Color(0x36579ACA)
      ..style = PaintingStyle.fill
      ..isAntiAlias = true

      ..strokeWidth = 1.0;

    var path = Path()
      ..moveTo(115.37, 72.31)
      ..quadraticBezierTo( 115.37, 72.31,190.53, 36)
      ..quadraticBezierTo(226.2, 54.17, 272.84, 71.86)
      ..quadraticBezierTo( 284.51, 72.57,327.97, 134.31)
      ..quadraticBezierTo(316.59, 158.99,295.57, 214.03)
..quadraticBezierTo(294.71, 221.46, 215.54, 277.53)
    ..quadraticBezierTo(202.25, 273.85, 112.9, 262.49)
    ..quadraticBezierTo(87.65, 261.77, 27.46, 174.02)
    ..quadraticBezierTo(68.46, 119.13, 115.37, 72.31);



    canvas.drawPath(path, paint);
  }
  @override

  bool shouldRepaint(CustomPainter oldDelegate)=>false;
}