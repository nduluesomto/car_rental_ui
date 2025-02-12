import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppOutlinedButtonTheme {
   AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.iconLightColor,
      )
      );
}