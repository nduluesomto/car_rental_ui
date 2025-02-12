import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/image_strings.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final String carModel;

  const TabBarWidget({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          GestureDetector(
            onTap: () => AppHelperFunctions.popPage(context),
            child: Container(
                padding: EdgeInsets.all(AppSizes.paddingHorizontal),
                decoration: BoxDecoration(
                    color: AppHelperFunctions.isDarkMode(context)
                        ? AppColors.iconDarkColor
                        : AppColors.primaryColor,
                    shape: BoxShape.circle),
                child: Text(
                  'X',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
          ),
          SizedBox(width: AppSizes.md),
          SizedBox(
            width: AppHelperFunctions.screenWidth(context) / 2,
            child: Text(
                overflow: TextOverflow.ellipsis,
                carModel,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 22)),
          ),
        ]),
        Row(children: [
          CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: AppSizes.borderRadiusMd,
              backgroundImage: AssetImage(AppImages.userProfileImage)),
          SizedBox(width: AppSizes.sm),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings,
                size: AppSizes.iconMd, color: AppColors.iconLightColor),
            style: IconButton.styleFrom(
                backgroundColor: AppHelperFunctions.isDarkMode(context)
                    ? AppColors.iconDarkColor
                    : AppColors.primaryColor,
                fixedSize: Size(20, 20)),
          )
        ])
      ],
    );
  }
}
