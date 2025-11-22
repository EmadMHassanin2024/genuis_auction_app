import 'package:flutter/material.dart';

class MessageUserInput extends StatelessWidget {
  const MessageUserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.transparent, // ← بدون خلفية
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Message",

                  filled: false,
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,

                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 6),

            IconButton(icon: const Icon(Icons.mic), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send, color: Colors.blueAccent),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
