import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isSender;
  final bool showReactions;
  final bool showEdit;
  final String? imageUrl;

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.isSender,
    this.showReactions = false,
    this.showEdit = false,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isSender
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: isSender
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (showEdit)
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: const Icon(
                  Icons.edit,
                  size: 18,
                  color: Colors.blueAccent,
                ),
              ),
            if (!isSender && !showEdit)
              CircleAvatar(
                radius: 20,
                backgroundColor: imageUrl == null
                    ? const Color(0xFF224F78)
                    : Colors.transparent,
                backgroundImage: imageUrl != null
                    ? NetworkImage(imageUrl!)
                    : null,
              ),
            const SizedBox(width: 8),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: isSender
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: isSender
                          ? [
                              Text(
                                time,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  message,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ]
                          : [
                              Expanded(
                                child: Text(
                                  message,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                time,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            if (isSender)
              const CircleAvatar(radius: 20, backgroundColor: Colors.grey),
          ],
        ),

        if (showReactions) ...[
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 8),
            child: Row(
              children: [
                const Icon(Icons.thumb_up_alt_outlined, size: 20),
                const SizedBox(width: 8),
                const Icon(Icons.thumb_down_alt_outlined, size: 20),
                const Spacer(),
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.autorenew, size: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
