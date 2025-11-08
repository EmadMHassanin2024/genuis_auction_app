import 'package:flutter/material.dart';

class AddMethodButton extends StatelessWidget {
  const AddMethodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white, // خلفية بيضاء
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add, color: Colors.grey.shade800),
          label: Text(
            'ADD ANOTHER METHOD',
            style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
