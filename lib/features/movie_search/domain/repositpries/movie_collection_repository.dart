import '../entities/movie_collection.dart';

abstract class MovieCollectionRepository {
  Future<List<MovieCollection>> getCollections();
}
