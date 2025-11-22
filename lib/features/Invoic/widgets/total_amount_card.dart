import 'package:flutter/material.dart';

class TotalAmountCard extends StatelessWidget {
  const TotalAmountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xFFFafafa),

        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
