import '../../domain/entities/person.dart';

class PersonModel {
  final int id;
  final String? name;
  final String? enName;
  final String? photo;
  final String? sex;
  final int? growth;
  final String? birthday;
  final String? death;
  final int? age;
  final List<String>? birthPlace;
  final List<String>? deathPlace;
  final List<SpouseModel>? spouses;
  final int? countAwards;
  final List<String>? profession;
  final List<String>? facts;
  final List<MovieMiniModel>? movies;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  PersonModel({
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

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    List<String> extractList(dynamic data) {
      if (data == null) return [];
      return List<String>.from(data.map((e) => e['value']));
    }

    List<SpouseModel> extractSpouses(dynamic data) {
      if (data == null) return [];
      return List<SpouseModel>.from(data.map((e) => SpouseModel.fromJson(e)));
    }

    List<MovieMiniModel> extractMovies(dynamic data) {
      if (data == null) return [];
      return List<MovieMiniModel>.from(
          data.map((e) => MovieMiniModel.fromJson(e)));
    }

    return PersonModel(
      id: json['id'],
      name: json['name'],
      enName: json['enName'],
      photo: json['photo'],
      sex: json['sex'],
      growth: json['growth'],
      birthday: json['birthday'],
      death: json['death'],
      age: json['age'],
      birthPlace: extractList(json['birthPlace']),
      deathPlace: extractList(json['deathPlace']),
      spouses: extractSpouses(json['spouses']),
      countAwards: json['countAwards'],
      profession: extractList(json['profession']),
      facts: extractList(json['facts']),
      movies: extractMovies(json['movies']),
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
    );
  }

  Person toEntity() {
    return Person(
      id: id,
      name: name,
      enName: enName,
      photo: photo,
      sex: sex,
      growth: growth,
      birthday: birthday,
      death: death,
      age: age,
      birthPlace: birthPlace ?? [],
      deathPlace: deathPlace ?? [],
      spouses: spouses?.map((e) => e.toEntity()).toList() ?? [],
      countAwards: countAwards,
      profession: profession ?? [],
      facts: facts ?? [],
      movies: movies?.map((e) => e.toEntity()).toList() ?? [],
      updatedAt: updatedAt,
      createdAt: createdAt,
    );
  }
}

class SpouseModel {
  final int id;
  final String? name;
  final bool? divorced;
  final String? divorcedReason;
  final String? sex;
  final int? children;
  final String? relation;

  SpouseModel({
    required this.id,
    this.name,
    this.divorced,
    this.divorcedReason,
    this.sex,
    this.children,
    this.relation,
  });

  factory SpouseModel.fromJson(Map<String, dynamic> json) {
    return SpouseModel(
      id: json['id'],
      name: json['name'],
      divorced: json['divorced'],
      divorcedReason: json['divorcedReason'],
      sex: json['sex'],
      children: json['children'],
      relation: json['relation'],
    );
  }

  Spouse toEntity() {
    return Spouse(
      id: id,
      name: name,
      divorced: divorced,
      divorcedReason: divorcedReason,
      sex: sex,
      children: children,
      relation: relation,
    );
  }
}

class MovieMiniModel {
  final int id;
  final String? name;
  final String? alternativeName;
  final num? rating;
  final bool? general;
  final String? description;
  final String? enProfession;

  MovieMiniModel({
    required this.id,
    this.name,
    this.alternativeName,
    this.rating,
    this.general,
    this.description,
    this.enProfession,
  });

  factory MovieMiniModel.fromJson(Map<String, dynamic> json) {
    return MovieMiniModel(
      id: json['id'],
      name: json['name'],
      alternativeName: json['alternativeName'],
      rating: json['rating'],
      general: json['general'],
      description: json['description'],
      enProfession: json['enProfession'],
    );
  }

  MovieMini toEntity() {
    return MovieMini(
      id: id,
      name: name,
      alternativeName: alternativeName,
      rating: rating,
      general: general,
      description: description,
      enProfession: enProfession,
    );
  }
}
