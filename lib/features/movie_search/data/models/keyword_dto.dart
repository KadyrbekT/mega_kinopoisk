import '../../domain/entities/keyword.dart';

class MovieDTO {
  final int id;

  MovieDTO({required this.id});

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      MovieDTO(id: json['id']);

  Movie toDomain() => Movie(id: id);
}

class KeywordDTO {
  final int id;
  final String title;
  final MovieDTO movies;
  final DateTime createdAt;
  final DateTime updatedAt;

  KeywordDTO({
    required this.id,
    required this.title,
    required this.movies,
    required this.createdAt,
    required this.updatedAt,
  });

  factory KeywordDTO.fromJson(Map<String, dynamic> json) => KeywordDTO(
    id: json['id'],
    title: json['title'],
    movies: MovieDTO.fromJson(json['movies']),
    createdAt: DateTime.parse(json['createdAt']),
    updatedAt: DateTime.parse(json['updatedAt']),
  );

  Keyword toDomain() => Keyword(
    id: id,
    title: title,
    movie: movies.toDomain(),
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}
