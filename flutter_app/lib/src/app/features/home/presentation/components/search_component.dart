import 'package:flutter/material.dart';
import 'package:flutter_interview/src/app/features/home/core/providers/search_provider.dart';
import 'package:flutter_interview/src/app/features/home/presentation/components/search_result_component.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components.dart';

class SearchComponent extends ConsumerStatefulWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends ConsumerState<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchStateProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: state.maybeWhen(
                orElse: () => Container(),
                initial: () => const StartSearchComponent(),
                loadInProgress: () => Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor),
                    ),
                loadSuccess: (data) => SearchResultComponent(movies: data),
                loadFailure: (message) => ErrorComponent(message: message)))
      ],
    );
  }
}
