import 'package:mega_kinopoisk/features/movie_search/data/mappers/media_mapper.dart';

import '../../domain/entities/episode.dart';
import '../models/episodes/episode_dto.dart';

extension EpisodeMapper on EpisodeDto {
  Episode toDomain() {
    return Episode(
      number: number,
      name: name,
      enName: enName,
      description: description,
      still: still?.toDomain(),
      airDate: airDate,
      enDescription: enDescription,
    );
  }
}