import 'package:flutter/material.dart';
import 'package:foodmarket_flutter/ui/intro/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/core.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFAFAFC),
        textTheme: GoogleFonts.poppinsTextTheme(),
        // primaryTextTheme: GoogleFonts.poppinsTextTheme(),
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(
        //     textStyle: GoogleFonts.poppins(),
        //   ),
        // ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          toolbarHeight: 108,
          titleSpacing: 0,
          iconTheme: const IconThemeData(color: Color(0xff020202)),
          titleTextStyle: GoogleFonts.poppins(),
        ),
      ),
    );
  }
}
