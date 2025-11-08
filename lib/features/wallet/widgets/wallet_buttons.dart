import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';

class WalletButtons extends StatelessWidget {
  const WalletButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.gold,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              elevation: 0,
            ),
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white, size: 20),
            label: const Text(
              '+ Add Money',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              elevation: 0,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.receipt_long,
              color: AppColors.bgTop,
              size: 20,
            ),
            label: const Text(
              'Invoice',
              style: TextStyle(
                color: AppColors.bgTop,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
