import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EngineDetails extends StatelessWidget {
  const EngineDetails(
      {super.key,
      required this.engineModel,
      required this.maxPower,
      required this.displacement,
      required this.compRatio,
      required this.fuelType,
      required this.cylinders,
      required this.fuelTank});

  final String engineModel;
  final double? maxPower;
  final String? displacement;
  final double? compRatio;
  final String? fuelType;
  final int? cylinders;
  final String? fuelTank;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHelperFunctions.screenHeight(context) * 0.35,
      padding: EdgeInsets.symmetric(
          vertical: AppSizes.paddingVertical,
          horizontal: AppSizes.paddingHorizontal + 4),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          detailsBlock(title: 'Engine Model', value: engineModel),
          SizedBox(height: AppSizes.sizedBoxSm),
          detailsBlock(
              title: 'Maximum Power', value: maxPower!.toStringAsFixed(1)),
          SizedBox(height: AppSizes.sizedBoxSm),
          detailsBlock(title: 'Displacement', value: displacement!),
          SizedBox(height: AppSizes.sizedBoxSm),
          detailsBlock(
              title: 'Compression Ratio', value: compRatio!.toStringAsFixed(1)),
          SizedBox(height: AppSizes.sizedBoxSm),
          detailsBlock(title: 'Fuel Type', value: fuelType!),
          SizedBox(height: AppSizes.sizedBoxSm),
          detailsBlock(title: 'Cylinders', value: cylinders!.toString()),
          SizedBox(height: AppSizes.sizedBoxSm),
          detailsBlock(title: 'Fuel Tank Equipment', value: fuelTank!),
        ],
      ),
    );
  }
}

Widget detailsBlock({required String title, required String value}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title),
      Text(value),
    ],
  );
}
