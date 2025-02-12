import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AwaitingCard extends StatelessWidget {
  const AwaitingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.md, vertical: AppSizes.sm),
      width: double.infinity,
      height: AppHelperFunctions.screenHeight(context) * 0.23,
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
                : BoxShadow()
          ],
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs),
          gradient: AppHelperFunctions.isDarkMode(context)
              ? AppColors.darkLinearGradient
              : AppColors.lightLinearGradient),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Your driver on the way', style: TextTheme.of(context).bodyMedium),
        const SizedBox(height: AppSizes.sizedBoxSm),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('23:32', style: Theme.of(context).textTheme.titleLarge),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(

                    onPressed: () {},
                    icon: Icon(Icons.message,
                        color: AppHelperFunctions.isDarkMode(context)
                            ? Colors.black
                            : Colors.white,
                        size: AppSizes.iconMd),
                    label: Text('Chat',
                        style: TextStyle(
                            color: AppHelperFunctions.isDarkMode(context)
                                ? Colors.black
                                : Colors.white))),
                const SizedBox(height: AppSizes.xs),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.call,
                        color: AppHelperFunctions.isDarkMode(context)
                            ? Colors.white
                            : Colors.black,
                        size: AppSizes.iconMd),
                    label: Text('Call',
                        style: TextStyle(
                            fontSize: AppSizes.fontSizeMd,
                            color: AppHelperFunctions.isDarkMode(context)
                                ? Colors.white
                                : Colors.black)))
              ],
            )
          ],
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          'Waiting time',
          style: TextTheme.of(context).bodyMedium,
        )
      ]),
    );
  }
}
