import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/extension/extension.dart';
import 'package:online_groceries_app/features/data/models/banner_model.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/shop_page/widget/carousel_indicator_widget.dart';

class HomeBannerSliderWidget extends StatefulWidget {
  const HomeBannerSliderWidget({super.key});

  @override
  State<HomeBannerSliderWidget> createState() => _HomeBannerSliderWidgetState();
}

class _HomeBannerSliderWidgetState extends State<HomeBannerSliderWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: banners.length,
          itemBuilder: (context, index, _) {
            return Container(
              width: context.width,
              margin: EdgeInsets.symmetric(horizontal: context.height * 0.005),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.height * 0.015),
                child: Image.asset(banners[index].kImage, fit: BoxFit.cover),
              ),
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, _) {
              setState(() {
                currentIndex = index;
              });
            },
            height: context.height * 0.114,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
          ),
        ),
        CarouselIndicatorWidget(currentIndex: currentIndex),
      ],
    );
  }
}
