import 'package:flutter/material.dart';

class AmountBox extends StatelessWidget {
  const AmountBox({super.key});

  @override
  Widget build(BuildContext context) {
    const amount = "0,00";

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        color: const Color(0xfffafafa),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Amount", style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                amount,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "SAR",
                style: TextStyle(color: Colors.black54, fontSize: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
