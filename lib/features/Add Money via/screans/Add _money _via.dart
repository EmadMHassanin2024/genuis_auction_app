import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/about_us_header.dart';
import 'package:genuis_auction_app/features/Add%20Money%20via/widget/add_amount_button.dart';
import 'package:genuis_auction_app/features/Add%20Money%20via/widget/amount_box.dart';
import 'package:genuis_auction_app/features/Add%20Money%20via/widget/calculator.dart';
import 'package:genuis_auction_app/features/Add%20Money%20via/widget/minimum_box.dart';

class AddMoneyViaPage extends StatelessWidget {
  const AddMoneyViaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              /// Header
              AboutUsHeader(
                title: 'Add Money Via Master Card',
                highlightText: 'Master Card',
                highlightColor: Color(0xFFFBB168), // صحيح

                icon: null,
              ),

              SizedBox(height: 25),

              /// Amount Box
              AmountBox(),

              SizedBox(height: 20),

              /// Minimum Box
              MinimumBox(),

              SizedBox(height: 40),

              /// Add Button
              AddAmountButton(),

              SizedBox(height: 50),

              /// Calculator
              CalculatorWidget(),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
