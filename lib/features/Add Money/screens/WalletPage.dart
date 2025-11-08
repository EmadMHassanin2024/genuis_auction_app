import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/wallet/widgets/wallet_header.dart';

import '../widgets/payment_tile.dart';
import '../widgets/add_method_button.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WalletHeader(),

              // العنوان + زر الإغلاق
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Add money via',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close, size: 26),
                    ),
                  ],
                ),
              ),

              const Divider(thickness: 1),

              // قائمة طرق الدفع
              Column(
                children: const [
                  PaymentTile(
                    icon: Icons.credit_card,
                    iconColor: Colors.deepOrange,
                    title: 'MASTERCARD',
                  ),
                  Divider(thickness: 1),
                  PaymentTile(
                    icon: Icons.payment,
                    iconColor: Colors.blue,
                    title: 'VISA CARD',
                  ),
                  Divider(thickness: 1),
                  PaymentTile(
                    icon: Icons.account_balance,
                    iconColor: Colors.green,
                    title: 'MADA',
                  ),
                  Divider(thickness: 1),
                  PaymentTile(
                    icon: Icons.monetization_on,
                    iconColor: Colors.amber,
                    title: 'WESTERN UNION',
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const AddMethodButton(), // زر إضافة طريقة جديدة
            ],
          ),
        ),
      ),
    );
  }
}
