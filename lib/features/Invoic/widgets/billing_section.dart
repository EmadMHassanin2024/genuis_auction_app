import 'package:flutter/material.dart';

class BillingSection extends StatelessWidget {
  const BillingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Billing Plan',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 24),
          Text('Company Start', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
