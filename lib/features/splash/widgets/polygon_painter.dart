import 'dart:math' as math;
import 'package:flutter/material.dart';

class PolygonPainter extends CustomPainter {
  final int sides;
  final Color color;
  final double rotation;

  PolygonPainter({this.sides = 6, required this.color, this.rotation = -90});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final double cx = size.width / 2;
    final double cy = size.height / 2;
    final double radius = (size.shortestSide) * 0.45;

    final Path path = Path();

    for (int i = 0; i < sides; i++) {
      final double angle =
          (2 * math.pi * i / sides) + (rotation * math.pi / 180);
      final double x = cx + radius * math.cos(angle);
      final double y = cy + radius * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawShadow(path, Colors.black.withOpacity(0.25), 6, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
