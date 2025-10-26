import 'package:mega_kinopoisk/features/movie_search/data/mappers/season_mapper.dart';

import '../../data/data_sources/movie_remote_data_source.dart';
import '../entities/season.dart';

abstract class SeasonRepository {
  Future<List<Season>> getSeasons(int movieId);
}

class SeasonRepositoryImpl implements SeasonRepository {
  final MovieRemoteDataSource remote;

  SeasonRepositoryImpl({required this.remote});

  @override
  Future<List<Season>> getSeasons(int movieId) async {
    final dtos = await remote.fetchSeasons(movieId);
    return dtos.map((d) => d.toDomain()).toList();
  }
}
