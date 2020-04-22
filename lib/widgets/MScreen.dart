import 'package:flutter/material.dart';

class MScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Transform(
        transform: Matrix4.translationValues(0, 5, 0),
        child: Text(
          'Екран',
        ),
      ),
      Center(
        child: CustomPaint(
          size: Size(400, 20),
          painter: MyPainter(),
        ),
      )
    ]);
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(0, 20);
    path.quadraticBezierTo(size.width / 2, 0, size.width, 20);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
