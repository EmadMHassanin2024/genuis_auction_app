import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/Invoic/screans/InvoiceApp.dart';
import 'package:genuis_auction_app/features/agreement/screens/auction_agreementPage.dart';
import 'package:genuis_auction_app/features/wallet/screens/wallet_screen.dart';
import 'package:genuis_auction_app/screens/auth/login_screen.dart';
import '../features/splash/screans/splash_screen.dart';
import '../screens/onboarding/onboarding_screen.dart';

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
