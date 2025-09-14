import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';
import 'package:online_groceries_app/features/data/models/banner_model.dart';

class CarouselIndicatorWidget extends StatelessWidget {
  final int currentIndex;
  const CarouselIndicatorWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: context.height * 0.007),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(banners.length, (index) {
            return Container(
              margin: EdgeInsetsDirectional.only(end: 10),
              height: context.height * 0.006,
              width: currentIndex == index
                  ? context.height * 0.020
                  : context.height * 0.005,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(context.height * 0.015),
                color: currentIndex == index
                    ? AppColors.kGreen
                    : AppColors.kConversion,
              ),
            );
          }),
        ],
      ),
    );
  }
}
