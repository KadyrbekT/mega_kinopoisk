import '../entities/review.dart';
import '../repositpries/movie_repository.dart';

class FetchReviews {
  final MovieRepository repository;

  FetchReviews(this.repository);

  Future<List<Review>> call(int movieId, {int page = 1}) async {
    return repository.fetchReviews(movieId, page: page);
  }
}
