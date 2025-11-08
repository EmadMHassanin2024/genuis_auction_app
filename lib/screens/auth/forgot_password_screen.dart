import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF3A57E8);
  static const Color bgColor = Color(0xFFF7F8FA);
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color surfaceLight = Color(0xFFF1F3F6);
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final scale = width / 428.0;

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 🎨 الجزء العلوي الجديد بتصميم أكثر احترافية
                  ClipPath(
                    clipper: TopWaveClipper(),
                    child: Container(
                      height: 280 * scale,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF3A57E8), Color(0xFF6B8CFF)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.15),
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(20 * scale),
                            child: Icon(
                              Icons.lock_outline_rounded,
                              color: Colors.white,
                              size: 70 * scale,
                            ),
                          ),
                          SizedBox(height: 16 * scale),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26 * scale,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8 * scale),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30 * scale,
                            ),
                            child: Text(
                              "Don't worry! It happens. Please enter the email\naddress linked with your account.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14 * scale,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // باقي الصفحة كما هي
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24 * scale,
                      vertical: 32 * scale,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email Address",
                          style: TextStyle(
                            color: AppColors.textPrimary.withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                            fontSize: 14 * scale,
                          ),
                        ),
                        SizedBox(height: 10 * scale),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            prefixIcon: const Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: AppColors.surfaceLight,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14 * scale),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 18 * scale,
                              horizontal: 12 * scale,
                            ),
                          ),
                        ),
                        SizedBox(height: 28 * scale),
                        SizedBox(
                          width: double.infinity,
                          height: 56 * scale,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14 * scale),
                              ),
                              elevation: 3,
                            ),
                            child: Text(
                              "Send OTP",
                              style: TextStyle(
                                fontSize: 16 * scale,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24 * scale),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: AppColors.textPrimary.withOpacity(0.3),
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8 * scale,
                              ),
                              child: Text(
                                "or",
                                style: TextStyle(
                                  color: AppColors.textPrimary.withOpacity(0.6),
                                  fontSize: 13 * scale,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: AppColors.textPrimary.withOpacity(0.3),
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20 * scale),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Use phone number instead",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14 * scale,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16 * scale),
                    child: Center(
                      child: Text(
                        "Need help? Contact support",
                        style: TextStyle(
                          color: AppColors.textPrimary.withOpacity(0.6),
                          fontSize: 12 * scale,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// 🎨 كلاس يرسم منحنى علوي احترافي
class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
