import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';
import 'wallet_top_row.dart';
import 'wallet_icon.dart';
import 'wallet_balance_section.dart';
import 'wallet_buttons.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.bgTop,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WalletTopRow(),
          SizedBox(height: 50),
          WalletIcon(),
          SizedBox(height: 20),
          WalletBalanceSection(),
          SizedBox(height: 20),
          WalletButtons(),
        ],
      ),
    );
  }
}
