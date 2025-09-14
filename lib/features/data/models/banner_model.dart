import 'package:online_groceries_app/core/constants/app_images.dart';

class BannerModel {
  final String kImage;

  BannerModel({required this.kImage});
}

List<BannerModel> banners = [
  BannerModel(kImage: AppImages.kBannerThree),
  BannerModel(kImage: AppImages.kBannerThree),
  BannerModel(kImage: AppImages.kBannerThree),
];
