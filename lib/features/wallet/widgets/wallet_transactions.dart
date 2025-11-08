import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/wallet/widgets/transaction_box.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Spacer(),
              Text(
                'See more',
                style: TextStyle(
                  color: Color(0xFF9FA4AA),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const TransactionBox(
            title: 'TopUp',
            amount: '1900 SAR',
            date: '24/8/2024',
            time: '20:42',
          ),
          const SizedBox(height: 10),
          const TransactionBox(
            title: 'Purchase',
            amount: '750 SAR',
            date: '26/8/2024',
            time: '18:15',
          ),
        ],
      ),
    );
  }
}
