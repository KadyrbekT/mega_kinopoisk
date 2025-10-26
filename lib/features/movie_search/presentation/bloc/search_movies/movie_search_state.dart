part of 'movie_search_bloc.dart';

abstract class MovieSearchState extends Equatable {
  const MovieSearchState();
  @override List<Object?> get props => [];
}

class MovieSearchStateInitial extends MovieSearchState {
  const MovieSearchStateInitial();
}

class MovieSearchStateLoading extends MovieSearchState {
  const MovieSearchStateLoading();
}

class MovieSearchStateEmpty extends MovieSearchState {
  const MovieSearchStateEmpty();
}

class MovieSearchStateNoResults extends MovieSearchState {
  const MovieSearchStateNoResults();
}

class MovieSearchStateLoaded extends MovieSearchState {
  final List<Movie> results;
  final bool hasMore;
  const MovieSearchStateLoaded({required this.results, required this.hasMore});
  MovieSearchStateLoaded copyWith({List<Movie>? results, bool? hasMore}) {
    return MovieSearchStateLoaded(results: results ?? this.results, hasMore: hasMore ?? this.hasMore);
  }
  @override List<Object?> get props => [results, hasMore];
}

class MovieSearchStateError extends MovieSearchState {
  final String message;
  const MovieSearchStateError({required this.message});
  @override List<Object?> get props => [message];
}
