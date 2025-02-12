import 'package:car_rental_ui/presentation/blocs/cars_bloc/cars_cubit.dart';
import 'package:car_rental_ui/presentation/screens/book_car.dart';
import 'package:car_rental_ui/presentation/screens/car_details.dart';
import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/helper_functions.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'car_card.dart';

class CarWidgets extends StatelessWidget {
  const CarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarsCubit, CarsState>(
      builder: (context, state) {
        if (state is CarsLoading) {
        } else if (state is CarsLoaded) {
          return Container(
            padding: EdgeInsets.only(
                top: AppSizes.md,
                left: AppSizes.paddingHorizontal,
                right: AppSizes.paddingHorizontal),
            height: AppHelperFunctions.screenHeight(context) * 0.56,
            decoration: BoxDecoration(
                boxShadow: [
                  AppHelperFunctions.isDarkMode(context)
                      ? BoxShadow()
                      : BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 0.8,
                          spreadRadius: 0.1,
                          offset: Offset(3, -2))
                ],
                color: AppHelperFunctions.isDarkMode(context)
                    ? AppColors.darkBackground
                    : AppColors.lightContainer,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs),
                border: Border.all(color: Colors.grey.shade500, width: 0.4)),
            child: Stack(
              children: [
                Positioned(
                    top: AppHelperFunctions.screenHeight(context) * 0.06,
                    right: AppHelperFunctions.screenWidth(context) * 0.04,
                    child: SmoothPageIndicator(
                        effect: WormEffect(
                            activeDotColor:
                                AppHelperFunctions.isDarkMode(context)
                                    ? Colors.white
                                    : AppColors.primaryColor,
                            dotHeight: 6,
                            dotWidth: 9),
                        controller: context.read<CarsCubit>().pageController,
                        count: state.carsData.length)),
                PageView.builder(
                    controller: context.read<CarsCubit>().pageController,
                    itemCount: state.carsData.length,
                    itemBuilder: (BuildContext context, index) {
                      return CarCard(
                        carModel: state.carsData[index].carModel,
                        shortDescription: state.carsData[index].shortDesc,
                        carImage: state.carsData[index].carImage,
                        dayCost: state.carsData[index].dayCost,
                        hourlyCost: state.carsData[index].hourlyCost,
                        engineModel: state.carsData[index].engineModel,
                        onTapSpec: CarDetails(
                          carModel: state.carsData[index],
                        ),
                        bookingPage: Book(carModel: state.carsData[index]),
                      );
                    }),
              ],
            ),
          );
        } else if (state is LoadingError) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
        return SizedBox();
      },
    );
  }
}
