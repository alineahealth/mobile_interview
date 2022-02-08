import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview/src/app/features/home/presentation/presentation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:localizations_sdk/localizations_sdk.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
      theme: Themes.light,
      localizationsDelegates: LocalizationsSdk.localizationsDelegates,
      home: const InitialPage(),
      supportedLocales: LocalizationsSdk.supportedLanguages,
    ));
  }
}
