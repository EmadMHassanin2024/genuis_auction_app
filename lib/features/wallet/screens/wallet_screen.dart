import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';
import 'package:genuis_auction_app/features/wallet/widgets/wallet_header.dart';
import 'package:genuis_auction_app/features/wallet/widgets/wallet_navbar.dart';
import 'package:genuis_auction_app/features/wallet/widgets/wallet_transactions.dart';
import 'package:genuis_auction_app/routes/app_routes.dart'; // ✅ مهم جدًا

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WalletHeader(),
              const WalletTransactions(),

              const SizedBox(height: 20),

              // 🔹 زر فتح اتفاقية المزاد
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.auctionAgreement);
                },
                icon: const Icon(
                  Icons.description_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  "عرض اتفاقية المزاد",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

              const SizedBox(height: 16),

              // 🔹 زر عرض الفاتورة
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.invoice);
                },
                icon: const Icon(
                  Icons.receipt_long_outlined,
                  color: Colors.white,
                ),
                label: const Text(
                  "عرض الفاتورة",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

              const SizedBox(height: 30),

              const WalletNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
