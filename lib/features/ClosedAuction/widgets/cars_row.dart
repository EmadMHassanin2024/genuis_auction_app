import 'package:flutter/material.dart';
import 'car_card.dart';

class CarsRowWidget extends StatelessWidget {
  final List<String> images;

  const CarsRowWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(images.length, (index) {
            return Row(
              children: [
                CarCardWidget(img: images[index]),
                if (index != images.length - 1) const SizedBox(width: 12),
              ],
            );
          }),
        ),
      ),
    );
  }
}
