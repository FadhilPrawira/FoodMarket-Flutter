import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

void navigateAfterDelay(BuildContext context) {
  Future.delayed(
    const Duration(seconds: 3),
    () {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
    },
  );
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    navigateAfterDelay(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.icShop.svg(),
              const SpaceHeight(30),
              Text(
                'FoodMarket',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
