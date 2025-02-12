import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  //Background colors
  static const Color lightBackground = Color(0xFFE3E0E0);
  static const Color darkBackground = Color(0xFF111111);
  static const Color primaryColor = Color(0xff4868b9);
  static const Color primary = Color(0xFFF3F5FF);

  //Icon colors
  static const Color iconLightColor = Colors.white;
  static const Color iconDarkColor = Color(0xFF333333);

  //Container
  static const Color lightContainer = Color(0xFFF6F6F6);

  //Gradient Colors
  static const Gradient darkLinearGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF2C2C2C),
        Color(0xff1e1e1e),
        Color(0xFF151515),
      ]);

  static const Gradient lightLinearGradient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xff4f61b9),
        Color(0xff4868b9),
        Color(0xFF8BA2DC),
      ]);

  //Text Color
  static const Color textColorWhite = Colors.white;
  static const Color textColorBlack = Colors.black;
  static const Color textSecondary = Color(0xFF7C8286);
}
