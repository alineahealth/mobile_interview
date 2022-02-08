import 'package:flutter/material.dart';

class HomeLocalizations {
  HomeLocalizations(this.locale);

  final Locale locale;

  static HomeLocalizations of(BuildContext context) {
    return Localizations.of<HomeLocalizations>(
      context,
      HomeLocalizations,
    )!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'pt': {
      'searchButtonText': 'Buscar filmes',
      'movieSearchInputText': 'Nome do filme'
    },
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String get searchButtonText {
    return _localizedValues[locale.languageCode]!['searchButtonText']!;
  }

  String get movieSearchInputText {
    return _localizedValues[locale.languageCode]!['movieSearchInputText']!;
  }
}
