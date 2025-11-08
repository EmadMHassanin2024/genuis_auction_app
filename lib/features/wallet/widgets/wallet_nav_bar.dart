import 'package:flutter/material.dart';
import 'nav_item.dart';

class WalletNavBar extends StatelessWidget {
  const WalletNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          NavItem(icon: Icons.home_outlined, label: 'Home'),
          NavItem(icon: Icons.shopping_cart_outlined, label: 'Buy Now'),
          NavItem(icon: Icons.person_outline, label: 'Profile'),
        ],
      ),
    );
  }
}
