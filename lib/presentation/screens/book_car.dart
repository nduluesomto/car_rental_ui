import 'package:car_rental_ui/data/models/car_model.dart';
import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'book_car_widgets/arrival_time_widget.dart';
import 'book_car_widgets/destination_card.dart';
import 'book_car_widgets/image_stack.dart';

class Book extends StatelessWidget {
  const Book({super.key, this.carModel});

  final CarModel? carModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppHelperFunctions.isDarkMode(context)
              ? Colors.white
              : AppColors.lightBackground,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSizes.borderRadiusLg),
              topRight: Radius.circular(AppSizes.borderRadiusLg))),
      height: AppHelperFunctions.screenHeight(context) * 0.805,
      child: Column(
        children: [
          ImageStack(
              carModel: carModel!.carModel,
              context: context,
              carImage: carModel!.carImage),
          Container(
            padding: EdgeInsets.only(
                right: AppSizes.paddingHorizontal,
                left: AppSizes.paddingHorizontal,
                bottom: AppSizes.paddingVertical),
            decoration: BoxDecoration(
                color: AppHelperFunctions.isDarkMode(context)
                    ? Colors.black.withValues(alpha: 0.9)
                    : AppColors.primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DestinationCard(context: context),
                const SizedBox(height: AppSizes.sizedBoxSm),
                ArrivalTimeWidget(context: context),
                const SizedBox(height: AppSizes.sizedBoxMd),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$70',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontSize: 26, fontWeight: FontWeight.w700)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.paddingHorizontal + 6,
                            vertical: AppSizes.paddingVertical),
                        decoration: BoxDecoration(
                            color: AppHelperFunctions.isDarkMode(context)
                                ? Colors.grey.shade400
                                : AppColors.darkBackground,
                            borderRadius:
                                BorderRadius.circular(AppSizes.borderRadiusMd)),
                        child: Text('BOOK NOW',
                            style: TextStyle(
                                color: AppHelperFunctions.isDarkMode(context)
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.w600)),
                      )
                    ]),
                  SizedBox(height: AppSizes.md + 4),
              ],
            ),
          ),
          // SizedBox(height: 20),
        ],
      ),
    );
  }
}
