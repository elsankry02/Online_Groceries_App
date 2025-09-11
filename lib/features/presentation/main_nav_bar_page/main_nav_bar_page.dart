import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_colors.dart';
import 'package:online_groceries_app/features/presentation/account_page/account_page.dart';
import 'package:online_groceries_app/features/presentation/cart_page/cart_page.dart';
import 'package:online_groceries_app/features/presentation/explore_page/explore_page.dart';
import 'package:online_groceries_app/features/presentation/favourite_page/favourite_page.dart';
import 'package:online_groceries_app/features/presentation/shop_page/shop_page.dart';

@RoutePage()
class MainNavBarPage extends StatefulWidget {
  const MainNavBarPage({super.key});

  @override
  State<MainNavBarPage> createState() => _MainNavBarPageState();
}

class _MainNavBarPageState extends State<MainNavBarPage> {
  List<Widget> widgets = [
    ShopPage(),
    ExplorePage(),
    CartPage(),
    FavouritePage(),
    AccountPage(),
  ];
  int currentIndex = 0;
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
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
      ),
      body: widgets.elementAt(currentIndex),
    );
  }
}
