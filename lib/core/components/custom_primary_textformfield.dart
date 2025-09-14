import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

class CustomPrimaryTextformfield extends StatelessWidget {
  final Widget? suffixIcon, prefixIcon;
  final bool obscureText, autofocus;
  final String hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  const CustomPrimaryTextformfield({
    super.key,
    this.suffixIcon,
    this.obscureText = false,
    required this.hintText,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.autofocus = false,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      obscureText: obscureText,
      validator: validator,
      controller: controller,

      cursorErrorColor: Colors.red,
      cursorColor: AppColors.kGrey,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kFillColor,
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: funcOutlineInputBorder(
          context,
          color: AppColors.kFillColor,
        ),
        focusedBorder: funcOutlineInputBorder(
          context,
          color: AppColors.kFillColor,
        ),
        errorBorder: funcOutlineInputBorder(context, color: AppColors.kRed),
      ),
    );
  }

  OutlineInputBorder funcOutlineInputBorder(
    BuildContext context, {
    required Color color,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(context.height * 0.015),
      borderSide: BorderSide(color: color),
    );
  }
}
