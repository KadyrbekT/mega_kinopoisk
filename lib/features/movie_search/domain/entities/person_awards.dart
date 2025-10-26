class Award {
  final String title;
  final int year;

  const Award({required this.title, required this.year});
}

class Nomination {
  final Award award;
  final String title;

  const Nomination({required this.award, required this.title});
}

class Movie {
  final int id;
  final String name;
  final num? rating;

  const Movie({required this.id, required this.name, this.rating});
}

class PersonAwards {
  final int personId;
  final Nomination nomination;
  final bool winning;
  final Movie movie;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const PersonAwards({
    required this.personId,
    required this.nomination,
    required this.winning,
    required this.movie,
    this.createdAt,
    this.updatedAt,
  });
}
