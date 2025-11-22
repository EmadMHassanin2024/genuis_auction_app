import 'package:flutter/material.dart';

class InvoiceProfile extends StatelessWidget {
  const InvoiceProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // 🔵 صورة البروفايل داخل دائرة مع خلفية
            CircleAvatar(
              radius: 100, // حجم الدائرة
              backgroundColor: const Color(
                0xFFbccad6,
              ), // لون الخلفية حول الصورة
              backgroundImage: const AssetImage(
                'assets/images/7.jpg', // الصورة المطلوبة
              ),
            ),

            // ✏️ زر التعديل على حافة الدائرة
            Positioned(
              bottom: 12, // ملتصق بحافة الدائرة
              right: 12,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFF224f78), // خلفية الزر
                  borderRadius: BorderRadius.circular(8), // حواف صغيرة
                ),
                child: const Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white, // لون الأيقونة أبيض
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16), // مسافة بين الصورة والنص

        const Text(
          'Mohammed Mohammed',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'March 13, 2021',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ],
    );
  }
}
