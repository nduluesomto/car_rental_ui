import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:car_rental_ui/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:car_rental_ui/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:car_rental_ui/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonThemeData,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.darkBackground,
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonThemeData,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
  );
}
