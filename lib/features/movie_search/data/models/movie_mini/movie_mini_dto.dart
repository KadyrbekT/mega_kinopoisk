import 'package:json_annotation/json_annotation.dart';

part 'movie_mini_dto.g.dart';

@JsonSerializable()
class MovieMiniDto {
  final int id;
  final String? name;
  final String? alternativeName;
  final num? rating;
  final bool? general;
  final String? description;
  final String? enProfession;

  MovieMiniDto({
    required this.id,
    this.name,
    this.alternativeName,
    this.rating,
    this.general,
    this.description,
    this.enProfession,
  });

  factory MovieMiniDto.fromJson(Map<String, dynamic> json) => _$MovieMiniDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MovieMiniDtoToJson(this);
}
