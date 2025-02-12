import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //Title
    titleLarge: TextStyle().copyWith(
        fontSize: AppSizes.fontSizeLg,
        fontWeight: FontWeight.w800,
        color: AppColors.textColorBlack),
    titleMedium: TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: AppSizes.fontSizeMd,
        color: AppColors.textColorBlack),
    titleSmall: TextStyle().copyWith(
        fontSize: AppSizes.fontSizeSm,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorBlack),

    //Body
    bodyLarge: TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: AppSizes.fontSizeLg,
        color: AppColors.textColorBlack),
    bodyMedium: TextStyle().copyWith(
        fontSize: AppSizes.fontSizeSm,
        fontWeight: FontWeight.w500,
        color: AppColors.textColorBlack),
    bodySmall: TextStyle().copyWith(
        fontWeight: FontWeight.w400,
        fontSize: AppSizes.fontSizeXs,
        color: AppColors.textColorBlack),

    //Label
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    //Title
    titleLarge: TextStyle().copyWith(
        fontSize: AppSizes.fontSizeLg,
        fontWeight: FontWeight.w800,
        color: Colors.white),
    titleMedium: TextStyle().copyWith(
        fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),
    titleSmall: TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),

    //Body
    bodyLarge: TextStyle().copyWith(
        fontWeight: FontWeight.w500, fontSize: 22.0, color: AppColors.primary),
    bodyMedium: TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary),
    bodySmall: TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Colors.grey.shade300),

    //Label
    labelLarge: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
  );
}
