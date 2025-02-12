import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack(
      {super.key,
      required this.carImage,
      required this.carModel,
      required this.context});

  final String carImage;
  final String carModel;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperFunctions.screenHeight(context) * 0.33,
      child: Stack(
        children: [
          Positioned(
              top: 1,
              child: Padding(
                padding: EdgeInsets.only(left: AppSizes.paddingHorizontal),
                child: Text(carModel,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.black, fontSize: 23)),
              )),
          Positioned(
              top: 1,
              right: 6,
              child: IconButton(
                  onPressed: () => AppHelperFunctions.popPage(context),
                  icon: Icon(Icons.cancel_outlined,
                      size: AppSizes.iconMd, color: Colors.black))),
          Positioned(
              top: AppHelperFunctions.screenHeight(context) * 0.045,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(AppSizes.sm),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppSizes.borderRadiusMd),
                    border: Border.all(color: Colors.black, width: 0.7)),
                child: Text('3CA-KH3R3Q', style: TextStyle(fontWeight: FontWeight.w700),),
              )),
          Positioned(
              top: AppHelperFunctions.screenHeight(context) * 0.195,
              left: 0,
              child: Container(
                height: AppHelperFunctions.screenHeight(context),
                width: AppHelperFunctions.screenWidth(context),
                padding: EdgeInsets.all(AppSizes.sm),
                decoration: BoxDecoration(
                    color: AppHelperFunctions.isDarkMode(context)
                        ? Colors.black.withValues(alpha: 0.9)
                        : AppColors.primaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(AppSizes.borderRadiusLg * 2))),
                child: Column(
                  children: [
                    SizedBox(
                        height:
                            AppHelperFunctions.screenHeight(context) * 0.20),
                  ],
                ),
              )),
          Positioned(
              top: AppHelperFunctions.screenHeight(context) * 0.060,
              left: 15,
              child: Image.asset(
                carImage,
                height: AppHelperFunctions.screenHeight(context) * 0.250,
                width: AppHelperFunctions.screenWidth(context),
                fit: BoxFit.fitWidth,
              )),
        ],
      ),
    );
  }
}
