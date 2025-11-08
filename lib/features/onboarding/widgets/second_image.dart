import 'package:flutter/material.dart';

class SecondImage extends StatelessWidget {
  const SecondImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/basket2.png',
        width: 120,
        height: 120,
        fit: BoxFit.contain,
      ),
    );
  }
}
