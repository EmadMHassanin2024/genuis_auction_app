import 'package:flutter/material.dart';
import 'package:genuis_auction_app/features/features.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(title: AppStrings.login),
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        topColor: AppColors.primary,
        bottomColor: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.07,
              vertical: size.height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.gavel_rounded,
                  size: size.width * 0.22,
                  color: AppColors.primary,
                ),
                const SizedBox(height: 16),
                const Text(AppStrings.appName, style: AppTextStyles.title),
                SizedBox(height: size.height * 0.04),

                CustomTextField(
                  label: AppStrings.email,
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),

                const CustomTextField(
                  label: AppStrings.password,
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                CustomButton(
                  key: const ValueKey("login_button"),
                  text: AppStrings.login,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.wallet);
                  },
                ),

                const SizedBox(height: 30),

                // ---------------- Divider with "or" ----------------
                Row(
                  children: const [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "or",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),

                const SizedBox(height: 25),

                // ---------------- Fingerprint Section ----------------
                GestureDetector(
                  onTap: () {
                    // TODO: add fingerprint login logic
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [Color(0xFF1976D2), Color(0xFF42A5F5)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.fingerprint_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Sign in with fingerprint",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // ---------------- Guest Login ----------------
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.wallet);
                  },
                  child: const Text(
                    "Log in as guest",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(AppStrings.noAccount),
                    TextButton(
                      onPressed: null,
                      child: const Text(
                        AppStrings.createAccount,
                        style: AppTextStyles.linkBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
