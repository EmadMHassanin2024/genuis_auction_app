import 'package:flutter/material.dart';

class BottomNavBarG extends StatelessWidget {
  const BottomNavBarG({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(height: 1, color: Colors.grey.shade300),
          SizedBox(
            height: 85,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // أيقونات الخلفية
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // HOME
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.home_outlined,
                            size: 40,
                            color: Colors.black,
                          ),
                          SizedBox(height: 2),
                          Text("Home", style: TextStyle(fontSize: 12)),
                        ],
                      ),

                      // BIT NOW
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          BitNowIcon(),
                          SizedBox(height: 4),
                          Text(
                            "Bit Now",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 80), // مساحة للزر المركزي
                      // CART
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.mail_outline,
                            size: 36,
                            color: Colors.black87,
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Cart",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),

                      // PROFILE
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.translate(
                            offset: const Offset(0, -5),
                            child: const Icon(
                              Icons.person_outline,
                              size: 50,
                              color: Color(0xffb16800),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            width: 30,
                            height: 3,
                            color: Color(0xffb16800),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // CENTER BUTTON
                Positioned(
                  top: -25,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xffe0b168),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ======= BIT NOW ICON =======
class BitNowIcon extends StatelessWidget {
  const BitNowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 4, height: 18, color: Colors.black87),
        const SizedBox(width: 2),
        Container(width: 4, height: 28, color: Colors.black87),
        const SizedBox(width: 2),
        Container(width: 4, height: 14, color: Colors.black87),
      ],
    );
  }
}
