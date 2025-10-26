class Cover {
  final String url;
  final String previewUrl;

  const Cover({required this.url, required this.previewUrl});
}

class MovieCollection {
  final String category;
  final String slug;
  final int moviesCount;
  final Cover cover;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  const MovieCollection({
    required this.category,
    required this.slug,
    required this.moviesCount,
    required this.cover,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });
}
