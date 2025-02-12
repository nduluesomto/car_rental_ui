import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.lightBackground,
    modalElevation: 0,
    modalBackgroundColor: AppColors.lightBackground,
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    modalElevation: 0,
    modalBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
  );
}
