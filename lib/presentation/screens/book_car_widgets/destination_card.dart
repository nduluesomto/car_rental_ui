import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/image_strings.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppHelperFunctions.screenHeight(context) * 0.22,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
            image: DecorationImage(
                image: AssetImage(AppImages.mapBackground), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
              color: AppHelperFunctions.isDarkMode(context)
                  ? Colors.black.withValues(alpha: 0.6)
                  : AppColors.primary.withValues(alpha: 0.7)),
          child: Container(
            child: destinationFrom(context),
          ),
        ));
  }
}

Widget destinationFrom(BuildContext context) {
  return Stack(
    children: [
      Positioned(
          left: 12,
          top: 16,
          child: Column(
            children: [
              Icon(Icons.stop, color: Colors.red),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  '-----',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppHelperFunctions.isDarkMode(context)
                          ? AppColors.textColorWhite
                          : AppColors.textColorBlack),
                ),
              ),
              Icon(Icons.flag_sharp)
            ],
          )),
      Positioned(
          left: 42,
          top: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  width: AppHelperFunctions.screenWidth(context) * 0.8,
                  child: Text('25 Nevsky Prospect, Saint Petersburg',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppHelperFunctions.isDarkMode(context)
                              ? AppColors.textColorWhite
                              : AppColors.textColorBlack)),
                ),
                Text('07:00 MCK (GMT+3)',
                    style: Theme.of(context).textTheme.bodySmall),
              ]),
              SizedBox(height: AppSizes.sizedBoxLg),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  width: AppHelperFunctions.screenWidth(context) * 0.8,
                  child: Text('Grazhdansky Prospekt 2, Saint Petersburg',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppHelperFunctions.isDarkMode(context)
                              ? AppColors.textColorWhite
                              : AppColors.textColorBlack)),
                ),
                Text('07:30 MCK (GMT+3)',
                    style: Theme.of(context).textTheme.bodySmall),
              ]),
            ],
          )),
      Positioned(
          left: 12,
          bottom: 10,
          child: Row(
            children: [
              details(
                  icon: Icons.location_on, title: '20.5 KM', context: context),
              SizedBox(width: AppSizes.sizedBoxMd),
              details(
                  icon: Icons.access_time_filled_rounded,
                  title: '30 mins',
                  context: context),
              SizedBox(width: AppSizes.sizedBoxMd),
              details(
                  icon: Icons.monetization_on, title: '\$70', context: context),
            ],
          ))
    ],
  );
}

Widget details({
  required IconData icon,
  required String title,
  required BuildContext context,
}) {
  return Row(
    children: [
      Icon(icon),
      const SizedBox(width: AppSizes.xs),
      Text(title, style: Theme.of(context).textTheme.bodySmall),
    ],
  );
}
