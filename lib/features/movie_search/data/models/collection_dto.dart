import '../../domain/entities/collection.dart';

class CoverDTO {
  final String url;
  final String previewUrl;

  CoverDTO({required this.url, required this.previewUrl});

  factory CoverDTO.fromJson(Map<String, dynamic> json) => CoverDTO(
    url: json['url'],
    previewUrl: json['previewUrl'],
  );

  Cover toDomain() => Cover(url: url, previewUrl: previewUrl);
}

class CollectionDTO {
  final String category;
  final String slug;
  final int moviesCount;
  final CoverDTO cover;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  CollectionDTO({
    required this.category,
    required this.slug,
    required this.moviesCount,
    required this.cover,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CollectionDTO.fromJson(Map<String, dynamic> json) => CollectionDTO(
    category: json['category'],
    slug: json['slug'],
    moviesCount: json['moviesCount'],
    cover: CoverDTO.fromJson(json['cover']),
    name: json['name'],
    createdAt: DateTime.parse(json['createdAt']),
    updatedAt: DateTime.parse(json['updatedAt']),
  );

  Collection toDomain() => Collection(
    category: category,
    slug: slug,
    moviesCount: moviesCount,
    cover: cover.toDomain(),
    name: name,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}
