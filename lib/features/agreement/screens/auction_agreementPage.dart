import 'package:flutter/material.dart';

import 'package:genuis_auction_app/features/features.dart';

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
