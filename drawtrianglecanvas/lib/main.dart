import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawing Traingle with FLutter'),
        ),
        body: Center(
          child: 
            Container(
              child: CustomPaint(
                  size: Size(200, 200),
                  painter: DrawTriangle()
                ),
          ),
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {

  Paint _paint;

  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;
  }
  
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}