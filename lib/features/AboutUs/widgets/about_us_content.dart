import 'package:flutter/material.dart';

class AboutUsContent extends StatelessWidget {
  const AboutUsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Types of data collected",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 15),
          Text('''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque posuere suscipit lacus, ac dapibus libero interdum in.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer finibus, justo vitae mattis hendrerit, libero nulla cursus sapien, ut dapibus sapien magna non urna.

Mauris tincidunt metus at enim efficitur, non commodo risus facilisis. Sed fermentum felis nec lorem ultricies, vel pharetra elit vehicula. Cras auctor, velit a tempor blandit, purus urna euismod ligula, eget porta nunc felis nec ex.

Integer sit amet justo non augue efficitur tincidunt. Aliquam erat volutpat. Vivamus ac suscipit odio, ac lacinia mauris.

Fusce non felis nec purus varius fringilla. Curabitur sagittis sapien sed urna bibendum, in sagittis sapien laoreet.
            ''', style: TextStyle(fontSize: 16, height: 1.6)),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
