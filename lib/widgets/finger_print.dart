import 'package:flutter/material.dart';
import 'package:genuis_auction_app/core/core.dart';

class FingerprintWidget extends StatelessWidget {
  final bool isVisible;
  final VoidCallback? onPressed;

  const FingerprintWidget({super.key, this.isVisible = true, this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox.shrink();

    return Column(
      children: [
        Text(
          AppStrings.loginWithFingerprint,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.textLight),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.gold],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Icon(Icons.fingerprint, color: Colors.white, size: 40),
          ),
        ),
      ],
    );
  }
}
