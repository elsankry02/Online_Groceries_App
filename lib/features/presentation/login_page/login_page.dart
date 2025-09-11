import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_app/core/components/custom_primary_button.dart';
import 'package:online_groceries_app/core/components/custom_richtext.dart';
import 'package:online_groceries_app/core/components/custom_textformfield.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/constants/app_images.dart';
import 'package:online_groceries_app/core/constants/app_svgs.dart';
import 'package:online_groceries_app/core/extension/extension.dart';
import 'package:online_groceries_app/core/router/router.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kMaskGroup, fit: BoxFit.cover),
          ListView(
            padding: EdgeInsets.symmetric(
              vertical: context.height * 0.100,
              horizontal: context.height * 0.025,
            ),
            children: [
              SvgPicture.asset(AppSvgs.kCorrots),
              SizedBox(height: context.height * 0.025),
              Text(
                textAlign: TextAlign.center,
                context.kAppLocalizations.onlinegroceriet,
                style: context.kTextTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kGreen,
                ),
              ),
              SizedBox(height: context.height * 0.060),
              Text(
                context.kAppLocalizations.login,
                style: context.kTextTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: context.height * 0.015),
              Text(
                context.kAppLocalizations.enteryouremailsandpassword,
                style: context.kTextTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.kGrey,
                ),
              ),
              SizedBox(height: context.height * 0.040),
              // Email
              CustomTextformfield(
                labelText: context.kAppLocalizations.email,
                controller: emailController,
              ),
              SizedBox(height: context.height * 0.030),
              // Password
              CustomTextformfield(
                labelText: context.kAppLocalizations.password,
                controller: passWordController,
                obscureText: showPass ? false : true,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      showPass = !showPass;
                    });
                  },
                  child: Icon(
                    showPass
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ),
              SizedBox(height: context.height * 0.060),
              CustomPrimaryButton(
                title: context.kAppLocalizations.login,
                backGroungColor: AppColors.kGreen,
                padding: EdgeInsets.symmetric(vertical: context.height * 0.020),
                borderRadius: BorderRadius.circular(context.height * 0.019),
                style: context.kTextTheme.titleMedium!.copyWith(
                  color: AppColors.kWhite,
                ),
                onTap: () => context.router.replace(MainNavBarRoute()),
              ),
              SizedBox(height: context.height * 0.020),
              CustomRichText(
                title: context.kAppLocalizations.donthaveanaccount,
                subTitle: context.kAppLocalizations.signup,
                onTap: () => context.router.replace(SignupRoute()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
