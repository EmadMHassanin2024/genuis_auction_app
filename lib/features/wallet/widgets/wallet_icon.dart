import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';

class WalletIcon extends StatelessWidget {
  const WalletIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // الإطار الأبيض الخارجي
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary, // الإطار الأبيض
            ),
          ),

          // خلفية الدائرة الملونة
          Container(
            width: 84, // أقل قليلاً لإظهار الإطار الأبيض حولها
            height: 84,
            decoration: BoxDecoration(shape: BoxShape.circle),
          ),

          // الصورة داخل الدائرة
          ClipOval(
            child: Image.asset(
              'assets/images/7.jpg',
              width: 80, // أقل من الخلفية لتبقى الحدود مرئية
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
