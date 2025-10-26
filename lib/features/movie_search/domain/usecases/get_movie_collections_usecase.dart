import '../entities/movie_collection.dart';
import '../repositpries/movie_collection_repository.dart';

class GetMovieCollectionsUseCase {
  final MovieCollectionRepository repository;

  GetMovieCollectionsUseCase({required this.repository});

  Future<List<MovieCollection>> call() async {
    return repository.getCollections();
  }
}
