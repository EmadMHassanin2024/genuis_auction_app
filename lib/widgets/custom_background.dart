import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/theme/app_colors.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final Color topColor;
  final Color bottomColor;

  const CustomBackground({
    super.key,
    required this.child,
    this.topColor = AppColors.primary,
    this.bottomColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // نجعل الحاوية تأخذ كامل المساحة لتظهر التدرج خلف كل المحتوى
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            topColor,
            // نعمل انتقال ناعم للون الأبيض/الخلفية في الأسفل
            bottomColor,
          ],
          stops: const [0.0, 0.9],
        ),
      ),
      child: child,
    );
  }
}
