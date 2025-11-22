import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        'See All',
        style: TextStyle(color: Colors.blue, fontSize: 16),
      ),
    );
  }
}
