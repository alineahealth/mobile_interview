import 'package:flutter_interview/src/app/core/states/states.dart';
import 'package:flutter_interview/src/app/features/home/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef SearchState = CommonState<String, List<MovieModel>>;

class SearchStateNotifier extends StateNotifier<SearchState> {
  SearchStateNotifier(this.repository) : super(const SearchState.initial());

  final MoviesRepository repository;

  Future<void> search({required text}) async {
    state = const SearchState.loadInProgress();

    final result = await repository.fetchByText(text);

    result.fold(
      (l) => state = SearchState.loadFailure(l),
      (r) => state = SearchState.loadSuccess(r),
    );
  }

  void reload() {
    state = const SearchState.initial();
  }
}
