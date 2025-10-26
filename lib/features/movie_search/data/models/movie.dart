import '../../domain/entities/movie.dart';

class MovieDTO {
  final int id;

  MovieDTO({required this.id});

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      MovieDTO(id: json['id']);

  // Movie toDomain() => Movie(id: id);
}
