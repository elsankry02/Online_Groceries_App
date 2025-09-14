import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

class CustomAddToCartButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomAddToCartButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(context.height * 0.014),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.height * 0.017),
          color: AppColors.kGreen,
        ),
        child: Icon(Icons.add, color: AppColors.kWhite),
      ),
    );
  }
}
