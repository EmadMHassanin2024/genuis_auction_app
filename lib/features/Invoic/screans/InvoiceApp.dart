import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/billing_section.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/bottom_nav_bar.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/invoice_details.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/invoice_header.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/invoice_profile.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/shopping_card.dart';
import 'package:genuis_auction_app/features/Invoic/widgets/total_amount_card.dart';
import 'package:genuis_auction_app/routes/app_routes.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 🔹 الزر البارز "+"
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // هنا تضع الإجراء عند الضغط
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, size: 32, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 🔹 الشريط السفلي
      bottomNavigationBar: const CustomBottomNavBar(),

      // 🔹 المحتوى القابل للتمرير
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.wallet);
                },
                child: const Text("العودة للمحفظة"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
