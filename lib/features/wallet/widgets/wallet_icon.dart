import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';

class WalletIcon extends StatelessWidget {
  const WalletIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Icon(
          Icons.account_balance_wallet_rounded,
          color: AppColors.bgTop,
          size: 42,
        ),
      ),
    );
  }
}
