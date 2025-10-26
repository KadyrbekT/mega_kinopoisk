import '../entities/movie.dart';
import '../entities/review.dart';

abstract class MovieRepository {
  Future<List<Movie>> searchMovies(String query, {int page = 1});

  Future<List<Review>> fetchReviews(int movieId, {int page = 1});
}
