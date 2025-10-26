import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/movie.dart';
import '../../../domain/usecases/search_movies.dart';

part 'movie_search_event.dart';
part 'movie_search_state.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  final SearchMovies searchMovies;

  MovieSearchBloc({required this.searchMovies}) : super(const MovieSearchStateInitial()) {
    on<MovieSearchQueryChanged>(_onQueryChanged);
    on<MovieSearchLoadMore>(_onLoadMore);
  }

  int _page = 1;
  String _lastQuery = '';
  bool _isLoadingMore = false;

  Future<void> _onQueryChanged(
      MovieSearchQueryChanged event,
      Emitter<MovieSearchState> emit,
      ) async {
    final query = event.query.trim();
    _page = 1;
    _lastQuery = query;

    if (query.isEmpty) {
      emit(const MovieSearchStateEmpty());
      return;
    }

    emit(const MovieSearchStateLoading());

    try {
      final results = await searchMovies(query, page: _page);
      if (results.isEmpty) {
        emit(const MovieSearchStateNoResults());
      } else {
        emit(MovieSearchStateLoaded(results: results, hasMore: results.length >= 20));
      }
    } catch (e) {
      emit(MovieSearchStateError(message: e.toString()));
    }
  }

  Future<void> _onLoadMore(
      MovieSearchLoadMore event,
      Emitter<MovieSearchState> emit,
      ) async {
    final current = state;
    if (current is MovieSearchStateLoaded && !_isLoadingMore && current.hasMore) {
      _isLoadingMore = true;
      try {
        _page++;
        final more = await searchMovies(_lastQuery, page: _page);
        final merged = List<Movie>.from(current.results)..addAll(more);
        emit(current.copyWith(results: merged, hasMore: more.isNotEmpty));
      } catch (e) {
        //
      } finally {
        _isLoadingMore = false;
      }
    }
  }
}
