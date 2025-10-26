import 'package:json_annotation/json_annotation.dart';
import '../media/media_dto.dart';

part 'episode_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeDto {
  final int number;
  final String? name;
  final String? enName;
  final String? description;
  final MediaDto? still;
  final String? airDate;
  final String? enDescription;

  const EpisodeDto({
    required this.number,
    this.name,
    this.enName,
    this.description,
    this.still,
    this.airDate,
    this.enDescription,
  });

  factory EpisodeDto.fromJson(Map<String, dynamic> json) =>
      _$EpisodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeDtoToJson(this);
}
