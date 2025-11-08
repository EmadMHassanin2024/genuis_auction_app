import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double height;
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color = Colors.deepPurple,
    this.textColor = Colors.white,
    this.borderRadius = 12,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: null, // لا حدث حقيقي الآن
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          "تسجيل الدخول",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
