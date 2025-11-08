import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/splash/widgets/polygon_painter.dart';
import 'package:genuis_auction_app/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  String _spaced(String s) => s.split('').join(' ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF224F78),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // الأيقونة على شكل مضلع
              CustomPaint(
                size: const Size(140, 140),
                painter: PolygonPainter(
                  sides: 6,
                  color: const Color(0xFFE0B168),
                ),
              ),

              const SizedBox(height: 24),

              // النص الأول
              Text(
                _spaced('GENIUSII'),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              // النص الثاني
              Text(
                _spaced('AUCTION FOR ALL'),
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // الزر للانتقال
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE0B168),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color(0xFF224F78),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
