import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';
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
      theme: ThemeData(primarySwatch: AppColors.primarySwatch),

      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}
