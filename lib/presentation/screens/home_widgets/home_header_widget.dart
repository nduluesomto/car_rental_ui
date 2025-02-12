import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/image_strings.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Your Location', style: Theme.of(context).textTheme.bodySmall),
        SizedBox(height: AppSizes.defaultHeight),
        Row(children: [
          Icon(
            Icons.location_on,
            size: AppSizes.iconMd,
            color: AppHelperFunctions.isDarkMode(context)
                ? AppColors.iconLightColor
                : AppColors.primaryColor,
          ),
          const SizedBox(width: 6),
          Text('Vosstaniya, Saint Petersburg',
              style: Theme.of(context).textTheme.bodySmall)
        ]),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  radius: AppSizes.borderRadiusMd,
                  backgroundImage: AssetImage(AppImages.userProfileImage)),
              SizedBox(width: AppSizes.sm),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined,
                    size: AppSizes.iconMd, color: AppColors.iconLightColor),
                style: IconButton.styleFrom(
                    backgroundColor: AppHelperFunctions.isDarkMode(context)
                        ? AppColors.iconDarkColor
                        : AppColors.primaryColor,
                    fixedSize: Size(AppSizes.borderRadiusMd, AppSizes.borderRadiusMd)),
              )
            ]),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu,
                  size: AppSizes.iconMd, color: AppColors.iconLightColor),
              style: IconButton.styleFrom(
                  backgroundColor: AppHelperFunctions.isDarkMode(context)
                      ? AppColors.iconDarkColor
                      : AppColors.primaryColor,
                  fixedSize: Size(AppSizes.borderRadiusMd, AppSizes.borderRadiusMd)),
            ),
          ],
        )
      ],
    );
  }
}
