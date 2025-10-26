class Movie {
  final int id;

  const Movie({required this.id});
}

class Keyword {
  final int id;
  final String title;
  final Movie movie;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Keyword({
    required this.id,
    required this.title,
    required this.movie,
    required this.createdAt,
    required this.updatedAt,
  });
}
