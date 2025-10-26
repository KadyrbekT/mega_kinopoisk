class PagedResponseDto<T> {
  final List<T> docs;
  final int total;
  final int page;
  final int pages;
  final int limit;

  PagedResponseDto({
    required this.docs,
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory PagedResponseDto.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    final docsJson = json['docs'] as List<dynamic>? ?? [];
    final docsList = docsJson.map(fromJsonT).toList();

    return PagedResponseDto<T>(
      docs: docsList,
      total: json['total'] ?? 0,
      page: json['page'] ?? 0,
      pages: json['pages'] ?? 0,
      limit: json['limit'] ?? docsList.length,
    );
  }
}
