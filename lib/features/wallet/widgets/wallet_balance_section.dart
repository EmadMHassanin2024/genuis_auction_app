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
              color: Colors.white70,
              fontSize: 16,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 6),
          Text(
            '\$3220.50',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
