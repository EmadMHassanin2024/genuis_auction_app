import 'package:flutter/material.dart';

class WalletTopRow extends StatelessWidget {
  const WalletTopRow({super.key});

  static Widget _iconCircle(IconData icon) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 22),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔝 الزر + الأيقونات
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'New Action',
                    style: TextStyle(
                      color: Color(0xFF224F78),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _iconCircle(Icons.notifications_none),
                    const SizedBox(width: 10),
                    _iconCircle(Icons.download_rounded),
                  ],
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: 10),

        // 👈 السهم + كلمة WALLET
        Row(
          children: const [
            Icon(Icons.arrow_back, color: Colors.white, size: 26),
            SizedBox(width: 6),
            Text(
              'WALLET',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
