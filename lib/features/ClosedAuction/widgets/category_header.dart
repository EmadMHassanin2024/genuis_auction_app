import 'package:flutter/material.dart';

class CategoryHeaderWidget extends StatelessWidget {
  const CategoryHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Close Auction',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text('Category', style: TextStyle(color: Colors.grey, fontSize: 16)),
        ],
      ),
    );
  }
}
