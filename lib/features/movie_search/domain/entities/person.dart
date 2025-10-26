class Person {
  final int id;
  final String? name;
  final String? enName;
  final String? photo;
  final String? sex;
  final int? growth;
  final String? birthday;
  final String? death;
  final int? age;
  final List<String> birthPlace;
  final List<String> deathPlace;
  final List<Spouse> spouses;
  final int? countAwards;
  final List<String> profession;
  final List<String> facts;
  final List<MovieMini> movies;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  const Person({
    required this.id,
    this.name,
    this.enName,
    this.photo,
    this.sex,
    this.growth,
    this.birthday,
    this.death,
    this.age,
    this.birthPlace = const [],
    this.deathPlace = const [],
    this.spouses = const [],
    this.countAwards,
    this.profession = const [],
    this.facts = const [],
    this.movies = const [],
    this.updatedAt,
    this.createdAt,
  });
}

class Spouse {
  final int id;
  final String? name;
  final bool? divorced;
  final String? divorcedReason;
  final String? sex;
  final int? children;
  final String? relation;

  const Spouse({
    required this.id,
    this.name,
    this.divorced,
    this.divorcedReason,
    this.sex,
    this.children,
    this.relation,
  });
}

class MovieMini {
  final int id;
  final String? name;
  final String? alternativeName;
  final num? rating;
  final bool? general;
  final String? description;
  final String? enProfession;

  const MovieMini({
    required this.id,
    this.name,
    this.alternativeName,
    this.rating,
    this.general,
    this.description,
    this.enProfession,
  });
}
