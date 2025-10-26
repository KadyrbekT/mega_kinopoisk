import '../movie.dart';

class Studio {
  final String id;
  final String title;
  final String subType;
  final String type;
  final Movie movie;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Studio({
    required this.id,
    required this.title,
    required this.subType,
    required this.type,
    required this.movie,
    required this.createdAt,
    required this.updatedAt,
  });
}
