import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/steps_section.dart';
import '../widgets/agreement_section.dart';
import '../widgets/submit_section.dart';
import '../widgets/bottom_nav_bar.dart';

class AuctionAgreementPage extends StatelessWidget {
  const AuctionAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderSection(),
            StepsSection(),
            AgreementSection(),
            SubmitSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
