import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/features.dart';

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

              // قائمة طرق الدفع مع الصور الجديدة
              Column(
                children: [
                  // Mastercard
                  PaymentTile(
                    icon: Image.asset(
                      'assets/images/8.png',
                      width: 36,
                      height: 36,
                    ),
                    title: 'MASTERCARD',
                  ),
                  const Divider(),

                  // VISA
                  PaymentTile(
                    icon: Image.asset(
                      'assets/images/9.png',
                      width: 36,
                      height: 36,
                    ),
                    title: 'VISA CARD',
                  ),
                  const Divider(),

                  // MADA
                  PaymentTile(
                    icon: Image.asset(
                      'assets/images/10.png',
                      width: 36,
                      height: 36,
                    ),
                    title: 'MADA',
                  ),
                  const Divider(),

                  // Western Union (مثال باستخدام Icon فقط)
                  PaymentTile(
                    icon: Image.asset(
                      'assets/images/11.png',
                      width: 36,
                      height: 36,
                    ),
                    title: 'WESTERN UNION',
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const AddMethodButton(),
            ],
          ),
        ),
      ),
    );
  }
}

/// =======================================================================
///                               PAYMENT TILE
/// =======================================================================

class PaymentTile extends StatelessWidget {
  final Widget icon;
  final String title;

  const PaymentTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {},
    );
  }
}
