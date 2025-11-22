import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/about_us_content.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/about_us_header.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/bottom_nav_icons.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          AboutUsHeader(showSearch: true),
          Expanded(child: AboutUsContent()),
        ],
      ),
      bottomNavigationBar: const BottomNavBarG(),
    );
  }
}
