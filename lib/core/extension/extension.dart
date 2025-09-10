import 'package:flutter/material.dart';
import 'package:online_groceries_app/l10n/app_localizations.dart';

extension AppExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  TextTheme get kTextTheme => Theme.of(this).textTheme;
  AppLocalizations get kAppLocalizations => AppLocalizations.of(this)!;
}
