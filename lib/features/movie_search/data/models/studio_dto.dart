import '../../domain/entities/studios/studio.dart';
import '../../domain/entities/movie.dart';

class StudioDTO {
  final String id;
  final String title;
  final String subType;
  final String type;
  final int movieId;
  final DateTime createdAt;
  final DateTime updatedAt;

  StudioDTO({
    required this.id,
    required this.title,
    required this.subType,
    required this.type,
    required this.movieId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StudioDTO.fromJson(Map<String, dynamic> json) => StudioDTO(
    id: json['id'],
    title: json['title'],
    subType: json['subType'],
    type: json['type'],
    movieId: json['movies']['id'],
    createdAt: DateTime.parse(json['createdAt']),
    updatedAt: DateTime.parse(json['updatedAt']),
  );

  Studio toDomain() => Studio(
    id: id,
    title: title,
    subType: subType,
    type: type,
    movie: Movie(id: movieId, title: ''),
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}
