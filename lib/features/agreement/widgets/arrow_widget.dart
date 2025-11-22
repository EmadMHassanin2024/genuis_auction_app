import 'package:flutter/material.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: const Size(20, 40), painter: ArrowPainter());
  }
}

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    path.moveTo(10, size.height / 2);
    path.lineTo(0, size.height / 2);
    path.lineTo(10, size.height / 4);

    path.moveTo(0, size.height / 2);
    path.lineTo(10, size.height * 3 / 4);

    path.moveTo(10, size.height / 2);
    path.lineTo(size.width, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
