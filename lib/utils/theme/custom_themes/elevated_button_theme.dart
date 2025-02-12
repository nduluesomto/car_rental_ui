import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonThemeData = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white60,
    backgroundColor: AppColors.primaryColor,
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: AppSizes.fontSizeMd,
        color: AppColors.textColorWhite),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ));

  static ElevatedButtonThemeData darkElevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white60,
    backgroundColor: AppColors.primary,
    disabledForegroundColor: Colors.grey,
    disabledBackgroundColor: Colors.grey,
    textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: AppSizes.fontSizeMd,
        color: Colors.white60),
  ));
}
