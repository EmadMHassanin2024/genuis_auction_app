import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    // خط السهم
    canvas.drawLine(
      Offset(size.width, size.height / 2),
      Offset(0, size.height / 2),
      paint,
    );

    // رأس السهم
    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(6, size.height / 2 - 6);
    path.moveTo(0, size.height / 2);
    path.lineTo(6, size.height / 2 + 6);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
