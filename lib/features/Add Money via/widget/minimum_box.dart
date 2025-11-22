import 'package:flutter/material.dart';

class MinimumBox extends StatelessWidget {
  const MinimumBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: const Text(
        "Minimum to add money : 100,0 SAR",
        style: TextStyle(fontSize: 18, color: Colors.black87),
      ),
    );
  }
}
