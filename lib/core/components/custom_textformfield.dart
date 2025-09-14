import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';

class CustomTextformfield extends StatelessWidget {
  final Widget? suffixIcon;
  final bool obscureText, autofocus;
  final String labelText;
  final TextStyle? labelStyle;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  const CustomTextformfield({
    super.key,
    this.suffixIcon,
    this.obscureText = false,
    required this.labelText,
    this.controller,
    this.validator,
    this.autofocus = true,
    this.labelStyle,
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
        labelText: labelText,
        labelStyle: labelStyle,
        suffixIcon: suffixIcon,
        enabledBorder: funcUnderlineInputBorder(color: AppColors.kGrey),
        focusedBorder: funcUnderlineInputBorder(color: AppColors.kGrey),
        errorBorder: funcUnderlineInputBorder(color: AppColors.kRed),
      ),
    );
  }

  UnderlineInputBorder funcUnderlineInputBorder({required Color color}) {
    return UnderlineInputBorder(borderSide: BorderSide(color: color));
  }
}
