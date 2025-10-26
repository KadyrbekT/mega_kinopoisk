// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonDto _$SeasonDtoFromJson(Map<String, dynamic> json) => SeasonDto(
      movieId: (json['movieId'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      episodesCount: (json['episodesCount'] as num).toInt(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => EpisodeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      poster: json['poster'] == null
          ? null
          : MediaDto.fromJson(json['poster'] as Map<String, dynamic>),
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      description: json['description'] as String?,
      enDescription: json['enDescription'] as String?,
      airDate: json['airDate'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$SeasonDtoToJson(SeasonDto instance) => <String, dynamic>{
      'movieId': instance.movieId,
      'number': instance.number,
      'episodesCount': instance.episodesCount,
      'episodes': instance.episodes?.map((e) => e.toJson()).toList(),
      'poster': instance.poster?.toJson(),
      'name': instance.name,
      'enName': instance.enName,
      'duration': instance.duration,
      'description': instance.description,
      'enDescription': instance.enDescription,
      'airDate': instance.airDate,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
