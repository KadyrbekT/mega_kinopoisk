// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_mini_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieMiniDto _$MovieMiniDtoFromJson(Map<String, dynamic> json) => MovieMiniDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      alternativeName: json['alternativeName'] as String?,
      rating: json['rating'] as num?,
      general: json['general'] as bool?,
      description: json['description'] as String?,
      enProfession: json['enProfession'] as String?,
    );

Map<String, dynamic> _$MovieMiniDtoToJson(MovieMiniDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeName': instance.alternativeName,
      'rating': instance.rating,
      'general': instance.general,
      'description': instance.description,
      'enProfession': instance.enProfession,
    };
