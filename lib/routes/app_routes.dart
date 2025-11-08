import 'package:flutter/material.dart';

import 'package:genuis_auction_app/features/features.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String wallet = '/wallet';
  static const String auctionAgreement = '/auction-agreement';
  static const String invoice = '/invoice';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    onboarding: (context) => const OnboardingScreen(),
    login: (context) => const LoginScreen(),
    wallet: (context) => const WalletScreen(),
    auctionAgreement: (context) => const AuctionAgreementPage(),
    invoice: (context) => const InvoicePage(),
  };
}
