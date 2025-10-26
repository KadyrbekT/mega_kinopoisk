import '../../../domain/entities/movie_collection.dart';

abstract class MovieCollectionState {}

class MovieCollectionInitial extends MovieCollectionState {}

class MovieCollectionLoading extends MovieCollectionState {}

class MovieCollectionLoaded extends MovieCollectionState {
  final List<MovieCollection> collections;

  MovieCollectionLoaded(this.collections);
}

class MovieCollectionError extends MovieCollectionState {
  final String message;

  MovieCollectionError(this.message);
}
