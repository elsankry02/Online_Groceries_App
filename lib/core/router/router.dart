import 'package:auto_route/auto_route.dart';
import 'package:online_groceries_app/features/presentation/login_page/login_page.dart';
import 'package:online_groceries_app/features/presentation/main_nav_bar/main_nav_bar_page/main_nav_bar_page.dart';
import 'package:online_groceries_app/features/presentation/signup_page/view/signup_page.dart';
import 'package:online_groceries_app/features/presentation/splash_page/splash_page.dart';
import 'package:online_groceries_app/features/presentation/welcome_page/welcome_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: MainNavBarRoute.page),
  ];
}
