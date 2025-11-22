import 'package:flutter/material.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('Status: Complete'),
          const Text('Transaction ID: STY54EGB'),
          const Text('Invoice Date: March 19, 2025'),
          const Text('Date Paid: March 19, 2026'),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // هنا ضع الوظيفة عند الضغط على الزر
                print('Continue pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFe0B168), // خلفية برتقالية

                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // الحواف مستديرة
                ),
              ),
              child: const Text(
                'CONTINUE',
                style: TextStyle(
                  color: Colors.white, // النص أبيض
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
