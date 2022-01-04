import 'package:ebook/widgets/customShape.dart';
import 'package:flutter/material.dart';


class MyPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: CustomPaint(
        painter: CustomShape(),
        child: Container(),
      ),
    );
  }
}