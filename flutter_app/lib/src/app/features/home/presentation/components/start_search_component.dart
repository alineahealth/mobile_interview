import 'package:design_system/design_system.dart';
import 'package:flutter_interview/src/app/features/home/core/providers/search_provider.dart';
import 'package:localizations_sdk/localizations_sdk.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartSearchComponent extends ConsumerWidget {
  const StartSearchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.x10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: InputWidget(
                  hintText: HomeLocalizations.of(context).movieSearchInputText,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Spacing.x10),
            child: Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    title: HomeLocalizations.of(context).searchButtonText,
                    color: LightColors().kcSuccess,
                    onTap: () =>
                        ref.read(searchStateProvider.notifier).search(text: ''),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
