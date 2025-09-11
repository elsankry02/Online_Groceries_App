import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

class SignUpRichText extends StatelessWidget {
  final void Function()? onTapTermsOfService;
  final void Function()? onTapPrivacyPolicy;
  const SignUpRichText({
    super.key,
    this.onTapTermsOfService,
    this.onTapPrivacyPolicy,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: context.kTextTheme.titleSmall!.copyWith(color: AppColors.kGrey),
        children: [
          TextSpan(text: context.kAppLocalizations.bycontinuingyouagreetoour),
          TextSpan(
            text: context.kAppLocalizations.termsofservice,
            style: context.kTextTheme.titleSmall!.copyWith(
              color: AppColors.kGreen,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapTermsOfService,
          ),
          TextSpan(text: context.kAppLocalizations.and),
          TextSpan(
            text: context.kAppLocalizations.privacypolicy,
            style: context.kTextTheme.titleSmall!.copyWith(
              color: AppColors.kGreen,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapPrivacyPolicy,
          ),
        ],
      ),
    );
  }
}
