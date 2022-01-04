import "package:flutter/material.dart";
import 'dart:math' as math;

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.orangeAccent
      ..strokeWidth = 15
    ..strokeCap = StrokeCap.round;

    var sides = 4;
    var radius = 150;
    var path = Path();
    var angle = (math.pi * 2) / sides;


    Offset center = Offset(size.width / 2, size.height / 2);

// startPoint => (100.0, 0.0)
    Offset startPoint = Offset(radius * math.cos(0.0), radius * math.sin(0.0));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);


    for (int i = 1; i <= sides; i++) {
      double x = radius * math.cos(angle * i) + center.dx;
      double y = radius * math.sin(angle * i) + center.dy;
      path.lineTo(x, y);
      // path.moveTo(x-10, y);
      path.arcToPoint(Offset(x+10,y+10),radius: Radius.circular(150));


      // path.arcTo(Rect.fromCircle(center: Offset(x,y),
      //     radius: 2).inflate(4), .5*math.pi, .5*math.pi, false);
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}