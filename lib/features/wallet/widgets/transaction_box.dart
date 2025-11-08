import 'package:flutter/material.dart';

class TransactionBox extends StatelessWidget {
  final String title;
  final String amount;
  final String date;
  final String time;

  const TransactionBox({
    required this.title,
    required this.amount,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF484C52),
                ),
              ),
              const Spacer(),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF224F78),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                date,
                style: const TextStyle(color: Color(0xFF9FA4AA), fontSize: 13),
              ),
              const Spacer(),
              Text(
                time,
                style: const TextStyle(color: Color(0xFF9FA4AA), fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
