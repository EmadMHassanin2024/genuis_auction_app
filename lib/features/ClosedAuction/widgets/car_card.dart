import 'package:flutter/material.dart';

class CarCardWidget extends StatelessWidget {
  final String img;

  const CarCardWidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int cardsCount = screenWidth <= 350
        ? 1
        : screenWidth <= 500
        ? 2
        : 3;

    double cardWidth =
        (screenWidth - 16 * 2 - (12 * (cardsCount - 1))) / cardsCount;

    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: const Color(0xFF224F78),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              'assets/images/$img',
              width: cardWidth,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Toyota Camry",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("00:00 AM", style: TextStyle(color: Colors.white70)),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffb16800),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Bid Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
