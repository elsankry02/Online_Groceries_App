import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

class CustomRichText extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onTap;
  const CustomRichText({
    super.key,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: context.kTextTheme.labelLarge!.copyWith(
              color: AppColors.kBlack,
            ),
          ),
          TextSpan(
            text: subTitle,
            style: context.kTextTheme.labelLarge!.copyWith(
              color: AppColors.kGreen,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
