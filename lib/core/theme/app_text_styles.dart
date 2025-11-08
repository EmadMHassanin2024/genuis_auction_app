import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColors.textLight, // أبيض على البنفسجي
  );

  static const TextStyle link = TextStyle(
    color: AppColors.textLight,
    decoration: TextDecoration.underline,
  );

  static const TextStyle linkBold = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textLight,
  );

  static const TextStyle normalDark = TextStyle(
    fontSize: 16,
    color: AppColors.textDark,
  );

  static const TextStyle hint = TextStyle(fontSize: 14, color: Colors.white70);
}
