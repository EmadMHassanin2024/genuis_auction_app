import 'package:flutter/material.dart';

class OnboardingTexts extends StatelessWidget {
  const OnboardingTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Perfect Shopping?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF224F78),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Fusce gravida, lorem nec egestas tincidunt, libero ipsum varius leo, nec ullamcorper justo felis a augue.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 14,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
