import 'package:car_rental_ui/data/models/car_model.dart';
import 'package:car_rental_ui/presentation/screens/car_details_widgets/tab_bar.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'car_details_widgets/engine_details.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key, this.carModel});

  final CarModel? carModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingHorizontal),
        child: Column(children: [
          TabBarWidget(carModel: carModel!.carModel),
          SizedBox(height: AppSizes.sizedBoxLg),
          Transform.flip(
              flipX: true,
              child: Image.asset(carModel!.carImage,
                  height: AppHelperFunctions.screenHeight(context) * 0.3,
                  fit: BoxFit.cover)),
          Spacer(),
          EngineDetails(
              engineModel: carModel!.engineModel,
              maxPower: carModel!.maximumPower,
              displacement: carModel!.displacement,
              compRatio: carModel!.compressionRatio,
              fuelType: carModel!.fuelType,
              cylinders: carModel!.cylinders,
              fuelTank: carModel!.fuelTankEquipment),
          const SizedBox(height: AppSizes.sizedBoxMd),
        ]),
      )),
    );
  }
}
