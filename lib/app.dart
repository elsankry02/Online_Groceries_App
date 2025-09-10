import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/constants/app_strings.dart';
import 'package:online_groceries_app/core/router/router.dart';
import 'package:online_groceries_app/l10n/app_localizations.dart';

class OnlineGroceriesApp extends StatelessWidget {
  const OnlineGroceriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppStrings.kGilroy),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),
    );
  }
}
