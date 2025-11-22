import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/about_us_header.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/bottom_nav_icons.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/cars_row.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/category_buttons.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/category_header.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/search_filter.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/section_header.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/see_all_button.dart';
import 'package:genuis_auction_app/features/ClosedAuction/widgets/special_offers.dart';

class ClosedAuctionPage extends StatelessWidget {
  const ClosedAuctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBarG(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 40),

            AboutUsHeader(title: 'Closed Auction', icon: Icons.access_alarm),

            SizedBox(height: 20),

            SearchFilterWidget(),

            SizedBox(height: 20),

            // الهيدر النصي الخاص بالعروض
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Special offers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            SpecialOffersWidget(),

            SpecialOffersWidget(),

            SizedBox(height: 10),

            CategoryHeaderWidget(),

            SizedBox(height: 10),

            CategoryButtonsWidget(),

            SizedBox(height: 20),

            Divider(thickness: 1),

            SectionHeaderWidget(title: "Cars"),

            SizedBox(height: 10),

            CarsRowWidget(images: ['2.jpg', '3.jpg', '4.jpg']),

            SeeAllButton(),

            Divider(thickness: 1),

            SectionHeaderWidget(title: "Mobiles"),

            SizedBox(height: 10),

            CarsRowWidget(images: ['5.jpg', '6.jpg', '5.jpg']),

            SeeAllButton(),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
