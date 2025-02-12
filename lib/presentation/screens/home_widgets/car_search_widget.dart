import 'package:car_rental_ui/utils/constants/colors.dart';
import 'package:car_rental_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarSearchWidget extends StatelessWidget {
  const CarSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Choose your\npreferred car', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 22)),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_outlined, size: AppSizes.iconMd),
          style: IconButton.styleFrom(fixedSize: Size(35, 65), side: BorderSide(color: AppColors.textSecondary, width: 0.5)),
        )
      ],
    );
  }
}
