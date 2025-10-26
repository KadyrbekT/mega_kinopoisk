import 'package:json_annotation/json_annotation.dart';
import '../movie_mini/movie_mini_dto.dart';
import '../actors_directors/value_item_dto.dart';
import '../actors_directors/spouses/spouse_dto.dart';

part 'person_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PersonDto {
  final int id;
  final String? name;
  final String? enName;
  final String? photo;
  final String? sex;
  final int? growth;
  final String? birthday;
  final String? death;
  final int? age;
  final List<ValueItemDto>? birthPlace;
  final List<ValueItemDto>? deathPlace;
  final List<SpouseDto>? spouses;
  final int? countAwards;
  final List<ValueItemDto>? profession;
  final List<ValueItemDto>? facts;
  final List<MovieMiniDto>? movies;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  PersonDto({
    required this.id,
    this.name,
    this.enName,
    this.photo,
    this.sex,
    this.growth,
    this.birthday,
    this.death,
    this.age,
    this.birthPlace,
    this.deathPlace,
    this.spouses,
    this.countAwards,
    this.profession,
    this.facts,
    this.movies,
    this.updatedAt,
    this.createdAt,
  });

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PersonDtoToJson(this);
}
