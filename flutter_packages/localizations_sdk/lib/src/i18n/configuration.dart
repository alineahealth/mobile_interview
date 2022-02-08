import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localizations_sdk/localizations_sdk.dart';

class LocalizationsSdk {
  static List<Locale> supportedLanguages = const [
    Locale('pt'),
  ];

  static Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      const [
    HomeLocalizationsDelegate(),
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate
  ];
}
