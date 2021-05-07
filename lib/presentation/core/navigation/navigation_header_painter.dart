import 'package:flutter/material.dart';

class NavigationHeaderPainter extends CustomPainter {
  NavigationHeaderPainter(this.color);

  Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final double w = size.width;
    final double h = size.height;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, h)
      ..arcToPoint(Offset(w * 0.5, h - 40), radius: Radius.circular(w * 0.5))
      ..arcToPoint(Offset(w, h - 80), radius: Radius.circular(w * 0.5), clockwise: false)
      ..lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
