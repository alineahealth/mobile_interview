import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview/src/app/features/home/presentation/widgets/movie_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers/search_provider.dart';
import '../../data/models/movie_model.dart';

class SearchResultComponent extends ConsumerWidget {
  final List<MovieModel> movies;
  const SearchResultComponent({required this.movies, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.x2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: Spacing.x2),
                child: InkWell(
                  onTap: () => ref.read(searchStateProvider.notifier).reload(),
                  child: Icon(
                    Icons.restart_alt,
                    color: Theme.of(context).errorColor,
                    size: Spacing.x10,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (_, index) {
                final movie = movies[index];
                return MovieWidget(
                  image: movie.poster,
                  title: movie.title,
                  year: movie.year,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
