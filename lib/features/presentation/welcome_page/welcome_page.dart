import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_app/core/components/custom_primary_button.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/constants/app_images.dart';
import 'package:online_groceries_app/core/constants/app_svgs.dart';
import 'package:online_groceries_app/core/extension/extension.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.kWelcome),
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: context.height * 0.500),
            SvgPicture.asset(AppSvgs.kCorrot),
            SizedBox(height: context.height * 0.020),
            Text(
              textAlign: TextAlign.center,
              context.kAppLocalizations.welcomeMessage,
              style: context.kTextTheme.displayMedium!.copyWith(
                color: AppColors.kWhite,
              ),
            ),
            SizedBox(height: context.height * 0.020),
            Text(
              textAlign: TextAlign.center,
              context.kAppLocalizations.getyourgroceriesinasfastasonehour,
              style: context.kTextTheme.titleMedium!.copyWith(
                color: AppColors.kGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: context.height * 0.040),
            CustomPrimaryButton(
              title: context.kAppLocalizations.getstarted,
              style: context.kTextTheme.titleMedium!.copyWith(
                color: AppColors.kWhite,
              ),
              backGroungColor: AppColors.kGreen,
              borderRadius: BorderRadius.circular(19),
              margin: EdgeInsets.symmetric(horizontal: context.height * 0.030),
              padding: EdgeInsets.symmetric(vertical: context.height * 0.024),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
