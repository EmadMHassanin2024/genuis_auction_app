import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 2,
        width: double.infinity,
        color: Colors.grey.shade500,
      ),
    );
  }
}
