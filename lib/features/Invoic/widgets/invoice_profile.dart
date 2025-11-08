import 'package:flutter/material.dart';

class InvoiceProfile extends StatelessWidget {
  const InvoiceProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          child: Icon(Icons.person, size: 40, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          'Mohammed Mohammed',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          'Invoice Date: March 13, 2021',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
