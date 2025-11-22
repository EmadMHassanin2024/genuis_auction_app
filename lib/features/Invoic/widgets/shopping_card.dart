import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF224f78),

        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Shopping List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.white),
              Text(
                'Auction Lot 32',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Item details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Samsung S21',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                '\$3200',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Text('Home', style: TextStyle(color: Colors.white70)),

          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipped 7–8 days - COD',
                style: TextStyle(color: Colors.white70),
              ),
              Text('Free', style: TextStyle(color: Colors.white70)),
              Text('DHL', style: TextStyle(color: Colors.white70)),
            ],
          ),

          const SizedBox(height: 16),

          // Message box
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Add your message',
                border: InputBorder.none,
              ),
            ),
          ),

          const SizedBox(height: 12),
          const Divider(color: Colors.white70),

          // Subtotal and tax
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'SUB TOTAL',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                '\$32000',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('TAX', style: TextStyle(color: Colors.white, fontSize: 14)),
              Text(
                '\$20',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
