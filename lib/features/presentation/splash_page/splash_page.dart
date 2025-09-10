import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/constants/app_images.dart';
import 'package:online_groceries_app/core/constants/app_svgs.dart';
import 'package:online_groceries_app/core/extension/extension.dart';
import 'package:online_groceries_app/core/router/router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    splash();
    super.initState();
  }

  Future<void> splash() async {
    await Future.delayed(Duration(seconds: 3), () {
      context.router.replace(WelcomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGreen,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.height * 0.073,
            ),
            leading: SvgPicture.asset(AppSvgs.kCorrot),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Image.asset(AppImages.kNectar)],
            ),
            subtitle: Text(
              context.kAppLocalizations.onlinegroceriet,
              style: context.kTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.kWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
