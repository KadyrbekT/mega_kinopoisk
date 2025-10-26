// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) => PersonDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      photo: json['photo'] as String?,
      sex: json['sex'] as String?,
      growth: (json['growth'] as num?)?.toInt(),
      birthday: json['birthday'] as String?,
      death: json['death'] as String?,
      age: (json['age'] as num?)?.toInt(),
      birthPlace: (json['birthPlace'] as List<dynamic>?)
          ?.map((e) => ValueItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      deathPlace: (json['deathPlace'] as List<dynamic>?)
          ?.map((e) => ValueItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      spouses: (json['spouses'] as List<dynamic>?)
          ?.map((e) => SpouseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      countAwards: (json['countAwards'] as num?)?.toInt(),
      profession: (json['profession'] as List<dynamic>?)
          ?.map((e) => ValueItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      facts: (json['facts'] as List<dynamic>?)
          ?.map((e) => ValueItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => MovieMiniDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$PersonDtoToJson(PersonDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'enName': instance.enName,
      'photo': instance.photo,
      'sex': instance.sex,
      'growth': instance.growth,
      'birthday': instance.birthday,
      'death': instance.death,
      'age': instance.age,
      'birthPlace': instance.birthPlace?.map((e) => e.toJson()).toList(),
      'deathPlace': instance.deathPlace?.map((e) => e.toJson()).toList(),
      'spouses': instance.spouses?.map((e) => e.toJson()).toList(),
      'countAwards': instance.countAwards,
      'profession': instance.profession?.map((e) => e.toJson()).toList(),
      'facts': instance.facts?.map((e) => e.toJson()).toList(),
      'movies': instance.movies?.map((e) => e.toJson()).toList(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
