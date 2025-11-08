import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const NavItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: const Color(0xFF9FA4AA)),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(color: Color(0xFF9FA4AA), fontSize: 12),
        ),
      ],
    );
  }
}
