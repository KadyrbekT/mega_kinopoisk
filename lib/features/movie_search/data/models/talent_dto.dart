import 'package:mega_kinopoisk/features/movie_search/data/models/talent.dart';

class PlaceDTO {
  final String value;

  PlaceDTO({required this.value});

  factory PlaceDTO.fromJson(Map<String, dynamic> json) =>
      PlaceDTO(value: json['value']);

  Place toDomain() => Place(value: value);
}

class ProfessionDTO {
  final String value;

  ProfessionDTO({required this.value});

  factory ProfessionDTO.fromJson(Map<String, dynamic> json) =>
      ProfessionDTO(value: json['value']);

  Profession toDomain() => Profession(value: value);
}

class TalentDTO {
  final int id;
  final String name;
  final String enName;
  final String? photo;
  final String sex;
  final int? growth;
  final String? birthday;
  final String? death;
  final int? age;
  final List<PlaceDTO> birthPlace;
  final List<PlaceDTO> deathPlace;
  final List<ProfessionDTO> profession;

  TalentDTO({
    required this.id,
    required this.name,
    required this.enName,
    this.photo,
    required this.sex,
    this.growth,
    this.birthday,
    this.death,
    this.age,
    required this.birthPlace,
    required this.deathPlace,
    required this.profession,
  });

  factory TalentDTO.fromJson(Map<String, dynamic> json) => TalentDTO(
        id: json['id'],
        name: json['name'],
        enName: json['enName'],
        photo: json['photo'],
        sex: json['sex'],
        growth: json['growth'],
        birthday: json['birthday'],
        death: json['death'],
        age: json['age'],
        birthPlace: (json['birthPlace'] as List)
            .map((e) => PlaceDTO.fromJson(e))
            .toList(),
        deathPlace: (json['deathPlace'] as List)
            .map((e) => PlaceDTO.fromJson(e))
            .toList(),
        profession: (json['profession'] as List)
            .map((e) => ProfessionDTO.fromJson(e))
            .toList(),
      );

  Talent toDomain() => Talent(
        id: id,
        name: name,
        enName: enName,
        photo: photo,
        sex: sex,
        growth: growth,
        birthday: birthday,
        death: death,
        age: age,
        birthPlace: birthPlace.map((e) => e.toDomain()).toList(),
        deathPlace: deathPlace.map((e) => e.toDomain()).toList(),
        profession: profession.map((e) => e.toDomain()).toList(),
      );
}
