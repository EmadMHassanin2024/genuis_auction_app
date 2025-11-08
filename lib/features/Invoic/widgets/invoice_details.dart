import 'package:flutter/material.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Status: Complete'),
          Text('Transaction ID: STY54EGB'),
          Text('Invoice Date: March 19, 2025'),
          Text('Date Paid: March 19, 2026'),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: null, child: Text('CONTINUE')),
          ),
        ],
      ),
    );
  }
}
