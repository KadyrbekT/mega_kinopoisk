import '../entities/movie.dart';
import '../repositpries/movie_repository.dart';

class SearchMovies {
  final MovieRepository repository;

  SearchMovies(this.repository);

  Future<List<Movie>> call(String query, {int page = 1}) async {
    if (query.trim().isEmpty) return [];
    return repository.searchMovies(query, page: page);
  }
}
