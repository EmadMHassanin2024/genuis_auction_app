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
                SizedBox(
                  height: 30, // ارتفاع الزر
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            10,
                          ), // الزاوية اليسرى العليا دائرية
                          bottomLeft: Radius.circular(
                            10,
                          ), // الزاوية اليسرى السفلى دائرية
                          topRight: Radius.circular(
                            10,
                          ), // الزاوية اليسرى الس, // الزاوية اليمنى العليا مربعة
                          bottomRight:
                              Radius.zero, // الزاوية اليمنى السفلى مربعة
                        ),
                      ),
                      elevation: 0,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // النص في منتصف الزر
                        Center(
                          child: const Text(
                            'New Action',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        // النقطة على نهاية الخلفية
                        Positioned(
                          top: 10, // منتصف الزر (height/2 - نصف حجم النقطة)
                          right: -18, // على الحافة اليمنى للزر
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Color(0xFFB16800),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Row(
                  children: [
                    _iconCircle(Icons.upload_file),

                    const SizedBox(width: 20),
                    _iconCircle(Icons.notifications_none),
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
