import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ArrivalTimeWidget extends StatelessWidget {
  const ArrivalTimeWidget({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        arrivalContainer(
            icon: Icons.calendar_today_outlined,
            arrivalDate: '20 Feb 2025',
            title: 'Arrival date',
            context: context),
        const SizedBox(width: AppSizes.sm),
        arrivalContainer(
            icon: Icons.flight_land_rounded,
            arrivalDate: '08:40 MCK',
            title: 'Flight arrival date',
            context: context)
      ],
    );
  }
}

Widget arrivalContainer(
    {required BuildContext context,
    required IconData icon,
    required String arrivalDate,
    required String title}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.sm,
          vertical: AppSizes.sm),
      width: AppHelperFunctions.screenWidth(context) * 0.44,
      height: AppHelperFunctions.screenHeight(context) * 0.12,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade700,
                spreadRadius: 0.3,
                offset: Offset(2, -1),
                blurRadius: 2),
            AppHelperFunctions.isDarkMode(context)
                ? BoxShadow(
                    color: AppColors.darkBackground,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                    blurRadius: 0)
                : BoxShadow(),
          ],
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs),
          gradient: AppHelperFunctions.isDarkMode(context)
              ? AppColors.darkLinearGradient
              : LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                      AppColors.primary,
                      AppColors.primary.withValues(alpha: 0.7)
                    ])),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Icon(icon),
          Expanded(child: Text(title, style: Theme.of(context).textTheme.bodySmall)),
        ]),
        const SizedBox(height: AppSizes.sm),
        Text(arrivalDate,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppHelperFunctions.isDarkMode(context)
                    ? Colors.white
                    : AppColors.textColorBlack)),
        Text('Estimated'),
      ]),
    ),
  );
}
