import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? margin, padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? backGroungColor;
  final TextStyle? style;
  final void Function()? onTap;
  final bool isLoading;
  const CustomPrimaryButton({
    super.key,
    this.margin,
    this.padding,
    this.backGroungColor,
    required this.title,
    this.borderRadius,
    this.onTap,
    this.style,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: backGroungColor,
          borderRadius: borderRadius,
        ),
        child: isLoading
            ? Center(
                child: SizedBox(
                  width: context.height * 0.020,
                  height: context.height * 0.020,
                  child: CircularProgressIndicator(color: AppColors.kWhite),
                ),
              )
            : Text(title, textAlign: TextAlign.center, style: style),
      ),
    );
  }
}
