import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:localizations_sdk/src/i18n/feature_localizations/home/home_localizations.dart';

class HomeLocalizationsDelegate
    extends LocalizationsDelegate<HomeLocalizations> {
  const HomeLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      HomeLocalizations.languages().contains(locale.languageCode);

  @override
  Future<HomeLocalizations> load(Locale locale) {
    return SynchronousFuture<HomeLocalizations>(
      HomeLocalizations(locale),
    );
  }

  @override
  bool shouldReload(HomeLocalizationsDelegate old) => false;
}
