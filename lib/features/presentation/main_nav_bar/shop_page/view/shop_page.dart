import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_app/core/components/custom_primary_textformfield.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/constants/app_svgs.dart';
import 'package:online_groceries_app/core/extension/extension.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/shop_page/widget/home_banner_slider_widget.dart';

@RoutePage()
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: context.height * 0.020,
        vertical: context.height * 0.040,
      ),
      children: [
        SvgPicture.asset(
          AppSvgs.kCorrots,
          height: context.height * 0.040,
          width: context.height * 0.040,
        ),
        Text(
          textAlign: TextAlign.center,
          context.kAppLocalizations.onlinegroceriet,
          style: context.kTextTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.kGreen,
          ),
        ),
        SizedBox(height: context.height * 0.020),
        CustomPrimaryTextformfield(
          hintText: context.kAppLocalizations.searchstore,
          hintStyle: context.kTextTheme.titleMedium!.copyWith(
            color: AppColors.kGrey,
          ),
          prefixIcon: Icon(Icons.search, color: AppColors.kBlack),
        ),
        SizedBox(height: context.height * 0.020),
        HomeBannerSliderWidget(),
        SizedBox(height: context.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.kAppLocalizations.exclusiveoffer,
              style: context.kTextTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              context.kAppLocalizations.seeall,
              style: context.kTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.kGreen,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
