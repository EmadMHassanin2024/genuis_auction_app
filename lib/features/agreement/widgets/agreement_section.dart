import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/theme/app_colors.dart';

class AgreementSection extends StatelessWidget {
  const AgreementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Purchase Agreement',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Suspendisse ultrices, nunc in facilisis sollicitudin, '
            'mauris risus tempus elit, at posuere urna quam in metus. '
            'Praesent et sapien vitae nisi tincidunt sodales. '
            'Aenean in orci nunc. Mauris id libero vel ex luctus egestas.',
            style: TextStyle(fontSize: 13, color: Colors.black87, height: 1.5),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
