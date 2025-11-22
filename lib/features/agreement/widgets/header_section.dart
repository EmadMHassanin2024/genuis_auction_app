import 'package:flutter/material.dart';

import 'package:genuis_auction_app/features/agreement/widgets/arrow_widget.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,

      padding: const EdgeInsets.only(left: 30, top: 60, bottom: 40),

      decoration: const BoxDecoration(color: Color(0xFF224F78)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const ArrowWidget(),

          const SizedBox(height: 20),

          // GENIUSII + النص اللي تحته
          Center(
            child: Column(
              children: const [
                Text(
                  "GENIUSII",
                  style: TextStyle(
                    fontSize: 32,

                    color: Color(0xFFE0B168),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "A U C T I O N   F O R   A L L",
                  style: TextStyle(
                    fontSize: 12,

                    color: Color(0xFFE0B168),
                    letterSpacing: 3,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 70),

          const Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Login to Your Account",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
