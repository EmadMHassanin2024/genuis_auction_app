import 'package:flutter/material.dart';

class WalletBalanceSection extends StatelessWidget {
  const WalletBalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            'BALANCE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 6),

          // --------------------------
          //   الرصيد + أيقونة العين
          // --------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$3220.50',
                style: TextStyle(
                  color: Color(0xFF6E604A),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(width: 10),

              Icon(
                Icons.visibility_off, // العين المقفولة
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
