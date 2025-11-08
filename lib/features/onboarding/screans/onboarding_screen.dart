import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/features.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SkipButton(),
              SizedBox(height: 20),
              WhiteBoxImage(),
              SizedBox(height: 30),
              SecondImage(),
              SizedBox(height: 40),
              OnboardingTexts(),
              SizedBox(height: 40),
              ProgressIndicatorRow(),
              SizedBox(height: 40),
              BottomLine(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
