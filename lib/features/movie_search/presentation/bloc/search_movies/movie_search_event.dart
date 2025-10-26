part of 'movie_search_bloc.dart';

abstract class MovieSearchEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MovieSearchQueryChanged extends MovieSearchEvent {
  final String query;
  MovieSearchQueryChanged(this.query);
  @override List<Object?> get props => [query];
}

class MovieSearchLoadMore extends MovieSearchEvent {}

