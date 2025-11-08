import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/theme/app_colors.dart';

class StepsSection extends StatelessWidget {
  const StepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      {'icon': Icons.description, 'label': 'Product\nSpecification'},
      {'icon': Icons.image, 'label': 'Image'},
      {'icon': Icons.access_time, 'label': 'Time'},
      {'icon': Icons.payment, 'label': 'Payment'},
      {'icon': Icons.assignment, 'label': 'Agreement'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // الخط الرئيسي
                Positioned.fill(
                  top: 34,
                  child: Container(height: 2.5, color: AppColors.accentColor),
                ),
                // الدوائر فوق الخط
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: steps.map((_) {
                    return Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        shape: BoxShape.circle,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // الأيقونات وأسامي المراحل
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: steps.map((step) {
              return Column(
                children: [
                  Icon(
                    step['icon'] as IconData,
                    color: AppColors.primaryColor,
                    size: 22,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    step['label'] as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 11, color: Colors.black),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
