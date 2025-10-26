part of 'episode_dto.dart';

EpisodeDto _$EpisodeDtoFromJson(Map<String, dynamic> json) => EpisodeDto(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      description: json['description'] as String?,
      still: json['still'] == null
          ? null
          : MediaDto.fromJson(json['still'] as Map<String, dynamic>),
      airDate: json['airDate'] as String?,
      enDescription: json['enDescription'] as String?,
    );

Map<String, dynamic> _$EpisodeDtoToJson(EpisodeDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'enName': instance.enName,
      'description': instance.description,
      'still': instance.still?.toJson(),
      'airDate': instance.airDate,
      'enDescription': instance.enDescription,
    };
