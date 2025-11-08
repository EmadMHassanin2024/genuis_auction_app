import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextInputAction? textInputAction;

  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    this.keyboardType,
    this.obscureText = false,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: AppColors.primary),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
