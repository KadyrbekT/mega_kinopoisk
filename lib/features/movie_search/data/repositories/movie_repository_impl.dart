import 'package:mega_kinopoisk/features/movie_search/data/mappers/movie_mapper.dart';
import 'package:mega_kinopoisk/features/movie_search/data/mappers/review_mapper.dart';

import '../../domain/entities/movie.dart';
import '../../domain/entities/review.dart';
import '../../domain/repositpries/movie_repository.dart';
import '../data_sources/movie_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource movieRemote;

  MovieRepositoryImpl({required this.movieRemote});

  @override
  Future<List<Movie>> searchMovies(String query, {int page = 1}) async {
    final dtos = await movieRemote.search(query, page: page);
    return dtos.map((d) => d.toDomain()).toList();
  }

  @override
  Future<List<Review>> fetchReviews(int movieId, {int page = 1}) async {
    final dtos = await movieRemote.fetchReviews(movieId, page: page);
    return dtos.map((d) => d.toDomain()).toList();
  }
}
