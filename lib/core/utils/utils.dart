import 'dart:math';
import '../../features/movie_search/data/models/movie_models/movie_dto.dart';

MovieDto getRandomMovie(List<MovieDto> movies) {
  if (movies.isEmpty) {
    throw Exception('Список фильмов пуст');
  }
  final randomIndex = Random().nextInt(movies.length);
  return movies[randomIndex];
}
