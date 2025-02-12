import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final String carModel;
  final String shortDescription;
  final String carImage;
  final String engineModel;
  final double dayCost;
  final double hourlyCost;
  final dynamic onTapSpec;
  final dynamic bookingPage;

  const CarCard({
    super.key,
    required this.carModel,
    required this.shortDescription,
    required this.carImage,
    required this.dayCost,
    required this.hourlyCost,
    required this.engineModel,
    required this.onTapSpec,
    required this.bookingPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(right: AppSizes.sm),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(carModel,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 22)),
        Text(shortDescription),
        Image.asset(
            fit: BoxFit.fitWidth, carImage, height: AppSizes.imageHeight),
        SizedBox(height: AppSizes.md),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            card(cost: dayCost, title: 'Full day', context: context),
            card(cost: hourlyCost, title: 'Hourly', context: context),
            engineType(model: engineModel, title: 'Engine', context: context)
          ]),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppHelperFunctions.isDarkMode(context)
                    ? AppColors.iconLightColor
                    : AppColors.primaryColor),
            child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      scrollControlDisabledMaxHeightRatio: 1,
                      barrierColor: Colors.transparent,
                      backgroundColor: AppHelperFunctions.isDarkMode(context)
                          ? Colors.white
                          : AppColors.lightBackground,
                      context: context,
                      builder: (context) => bookingPage);
                },
                icon: Icon(Icons.arrow_forward,
                    color: AppHelperFunctions.isDarkMode(context)
                        ? AppColors.iconDarkColor
                        : AppColors.iconLightColor)),
          )
        ]),
        const SizedBox(height: AppSizes.lg),
        moreInfo(
            context: context,
            tap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => onTapSpec))),
      ]),
    );
  }

  Widget card(
      {required double cost,
      required String title,
      required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(right: AppSizes.xs),
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
      decoration: BoxDecoration(
          color: AppHelperFunctions.isDarkMode(context)
              ? AppColors.iconDarkColor
              : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title),
        Text('\$ ${cost.toStringAsFixed(0)}',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600))
      ]),
    );
  }

  Widget engineType(
      {required String model,
      required String title,
      required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(right: AppSizes.xs),
      padding:
          EdgeInsets.symmetric(horizontal: AppSizes.md, vertical: AppSizes.xs),
      decoration: BoxDecoration(
          color: AppHelperFunctions.isDarkMode(context)
              ? AppColors.iconDarkColor
              : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title),
        Text(
          model,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        )
      ]),
    );
  }

  Widget moreInfo({required BuildContext context, required Function() tap}) {
    return GestureDetector(
        onTap: tap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
          decoration: BoxDecoration(
              color: AppHelperFunctions.isDarkMode(context)
                  ? Colors.white
                  : AppColors.primaryColor,
              borderRadius: BorderRadius.circular(AppSizes.sm)),
          width: double.maxFinite,
          child: Center(
              child: Text('More Specs',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppHelperFunctions.isDarkMode(context)
                          ? AppColors.textColorBlack
                          : AppColors.textColorWhite))),
        ));
  }
}
