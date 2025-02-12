import 'package:car_rental_ui/presentation/blocs/cars_bloc/cars_cubit.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_widgets/awaiting_card.dart';
import 'home_widgets/car_search_widget.dart';
import 'home_widgets/car_widgets.dart';
import 'home_widgets/home_header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingHorizontal),
          child: Column(
              spacing: AppSizes.lg,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
                AwaitingCard(),
                CarSearchWidget(),
                // const SizedBox(height: AppSizes.lg),
                BlocProvider(
                    create: (context) => CarsCubit()..loadCarData(),
                    child: CarWidgets())
              ]),
        ),
      )),
    );
  }
}
