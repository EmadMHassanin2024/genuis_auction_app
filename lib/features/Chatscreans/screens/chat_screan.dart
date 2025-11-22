import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/about_us_header.dart';
import 'package:genuis_auction_app/features/AboutUs/widgets/bottom_nav_icons.dart';
import 'package:genuis_auction_app/features/Chatscreans/widget/ChatBubble.dart';
import 'package:genuis_auction_app/features/Chatscreans/widget/MessageInput.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              /// ---- HEADER ----
              const AboutUsHeader(showSearch: true, title: "Customer Support"),

              const SizedBox(height: 20),

              /// ---- الرسائل ----
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerRight,
                      child: ChatBubble(
                        message: "Can you tell me shipping process?",
                        time: "9:41 AM",
                        isSender: true,
                        showEdit: true,
                      ),
                    ),

                    SizedBox(height: 16),

                    ChatBubble(
                      message:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      time: "9:41 AM",
                      isSender: false,
                      showReactions: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80), // ← مسافة فوق input
              /// ---- صندوق الكتابة ----
              const MessageUserInput(),

              const SizedBox(height: 150), // ← مسافة كبيرة قبل البار
              /// ---- الـ Bottom Nav Bar ----
              const BottomNavBarG(),
            ],
          ),
        ),
      ),
    );
  }
}
