import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/core/extension/extension.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/account_page/account_page.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/cart_page/cart_page.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/explore_page/explore_page.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/favourite_page/favourite_page.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/shop_page/view/shop_page.dart';

@RoutePage()
class MainNavBarPage extends StatefulWidget {
  const MainNavBarPage({super.key});

  @override
  State<MainNavBarPage> createState() => _MainNavBarPageState();
}

class _MainNavBarPageState extends State<MainNavBarPage> {
  int currentIndex = 0;
  List<Widget> widgets = [
    ShopPage(),
    ExplorePage(),
    CartPage(),
    FavouritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.kGreen,
        unselectedItemColor: AppColors.kBlack,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: context.kAppLocalizations.shop,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: context.kAppLocalizations.explore,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: context.kAppLocalizations.cart,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: context.kAppLocalizations.favourite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: context.kAppLocalizations.account,
          ),
        ],
      ),
      body: widgets.elementAt(currentIndex),
    );
  }
}
