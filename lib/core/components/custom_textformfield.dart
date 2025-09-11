import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

class CustomTextformfield extends StatelessWidget {
  final Widget? suffixIcon;
  final bool obscureText;
  final String labelText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  const CustomTextformfield({
    super.key,
    this.suffixIcon,
    this.obscureText = false,
    required this.labelText,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      cursorErrorColor: Colors.red,
      cursorColor: AppColors.kGrey,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: context.kTextTheme.titleMedium!.copyWith(
          color: AppColors.kGrey,
        ),
        suffixIcon: suffixIcon,
        disabledBorder: funcUnderlineInputBorder(color: AppColors.kGrey),
        focusedBorder: funcUnderlineInputBorder(color: AppColors.kGrey),
        errorBorder: funcUnderlineInputBorder(color: AppColors.kRed),
      ),
    );
  }

  UnderlineInputBorder funcUnderlineInputBorder({required Color color}) {
    return UnderlineInputBorder(borderSide: BorderSide(color: color));
  }
}
