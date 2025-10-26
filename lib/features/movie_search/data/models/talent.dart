class Place {
  final String value;

  const Place({required this.value});
}

class Profession {
  final String value;

  const Profession({required this.value});
}

class Talent {
  final int id;
  final String name;
  final String enName;
  final String? photo;
  final String sex;
  final int? growth;
  final String? birthday;
  final String? death;
  final int? age;
  final List<Place> birthPlace;
  final List<Place> deathPlace;
  final List<Profession> profession;

  const Talent({
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
}
