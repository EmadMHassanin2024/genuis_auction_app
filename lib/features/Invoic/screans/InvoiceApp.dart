import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/bottom_nav_icons.dart';
import 'package:genuis_auction_app/features/features.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 🔹 الشريط السفلي
      bottomNavigationBar: BottomNavBarG(),

      // 🔹 المحتوى القابل للتمرير
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              InvoiceHeader(),
              SizedBox(height: 12),
              InvoiceProfile(),
              SizedBox(height: 12),
              TotalAmountCard(),
              SizedBox(height: 12),
              BillingSection(),
              SizedBox(height: 16),
              ShoppingCard(),
              SizedBox(height: 16),
              InvoiceDetails(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
