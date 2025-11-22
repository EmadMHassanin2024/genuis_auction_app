import 'package:flutter/material.dart';

class CategoryButtonsWidget extends StatelessWidget {
  const CategoryButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffe0b168),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('All', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 20),

          ...['Cars', 'Mobiles', 'Tablet', 'Laptop'].map(
            (item) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(item),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
