import 'package:json_annotation/json_annotation.dart';
import '../episodes/episode_dto.dart';
import '../media/media_dto.dart';

part 'season_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class SeasonDto {
  final int movieId;
  final int number;
  final int episodesCount;
  final List<EpisodeDto>? episodes;
  final MediaDto? poster;
  final String? name;
  final String? enName;
  final int? duration;
  final String? description;
  final String? enDescription;
  final String? airDate;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  const SeasonDto({
    required this.movieId,
    required this.number,
    required this.episodesCount,
    this.episodes,
    this.poster,
    this.name,
    this.enName,
    this.duration,
    this.description,
    this.enDescription,
    this.airDate,
    this.updatedAt,
    this.createdAt,
  });

  factory SeasonDto.fromJson(Map<String, dynamic> json) =>
      _$SeasonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonDtoToJson(this);
}
