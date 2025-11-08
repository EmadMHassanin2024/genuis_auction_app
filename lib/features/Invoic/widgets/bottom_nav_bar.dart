import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFFB3E5FC),
      shape:
          const CircularNotchedRectangle(), // 🔹 مهم جداً لإظهار الفراغ حول الزر
      notchMargin: 6.0, // 🔹 المسافة حول الزر
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navItem(Icons.home, 'Home'),
            _navItem(Icons.shopping_cart, 'Bit Now'),
            const SizedBox(width: 40), // 🔹 مكان الزر البارز
            _navItem(Icons.message, 'Message'),
            _navItem(Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.black87),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
