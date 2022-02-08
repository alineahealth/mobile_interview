import 'package:flutter_interview/src/app/core/api/factory/factory.dart';
import 'package:flutter_interview/src/app/features/home/data/repositories/movies_repository.dart';
import 'package:flutter_interview/src/app/features/home/presentation/state_notifiers/search_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _moviesRepoProvider = Provider.autoDispose<MoviesRepository>(
    (ref) => MoviesRepository(client: ApiClientFactory.create()));

final searchStateProvider =
    StateNotifierProvider.autoDispose<SearchStateNotifier, SearchState>(
  (ref) => SearchStateNotifier(ref.read(_moviesRepoProvider)),
);
