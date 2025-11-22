import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/Chatscreans/screens/chat_screan.dart';
import 'package:genuis_auction_app/features/ClosedAuction/screans/ClosedAuctionPage.dart';
import 'package:genuis_auction_app/features/Invoic/screans/InvoiceApp.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const AuctionApp());
}

class AuctionApp extends StatelessWidget {
  const AuctionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auction App',
      // theme: ThemeData(primarySwatch: AppColors.primarySwatch),
      home: InvoicePage(),
      // initialRoute: AppRoutes.splash,
      // routes: AppRoutes.routes,
    );
  }
}
