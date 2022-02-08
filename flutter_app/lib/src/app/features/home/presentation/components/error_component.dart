import 'package:design_system/design_system.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers/search_provider.dart';

class ErrorComponent extends ConsumerWidget {
  final String message;
  const ErrorComponent({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => ref.read(searchStateProvider.notifier).reload(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoxText.bodyBold(
              message,
              color: Theme.of(context).errorColor,
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.x4),
              child: Icon(Icons.restart_alt_rounded,
                  size: Spacing.x10, color: Theme.of(context).errorColor),
            )
          ],
        ),
      ),
    );
  }
}
