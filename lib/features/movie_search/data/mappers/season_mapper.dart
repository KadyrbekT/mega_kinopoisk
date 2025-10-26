import 'package:mega_kinopoisk/features/movie_search/data/mappers/episode_mapper.dart';
import 'package:mega_kinopoisk/features/movie_search/data/mappers/media_mapper.dart';

import '../../domain/entities/season.dart';
import '../models/seasons/season_dto.dart';

extension SeasonMapper on SeasonDto {
  Season toDomain() {
    return Season(
      movieId: movieId,
      number: number,
      episodesCount: episodesCount,
      episodes: episodes?.map((e) => e.toDomain()).toList() ?? [],
      poster: poster?.toDomain(),
      name: name,
      enName: enName,
      duration: duration,
      description: description,
      enDescription: enDescription,
      airDate: airDate,
    );
  }
}
