import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/movie_models/movie_dto.dart';
import '../models/reviews/review_dto.dart';
import '../models/seasons/season_dto.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieDto>> search(String query, {int page = 1});

  Future<List<NameSlugDto>> fetchSimpleItems(String endpoint);

  Future<List<SeasonDto>> fetchSeasons(int movieId);

  Future<List<ReviewDto>> fetchReviews(int movieId, {int page = 1});

  Future<List<PersonDto>> fetchPerson(int personId);
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final http.Client client;
  final String baseUrl;
  final Map<String, String> defaultHeaders;

  MovieRemoteDataSourceImpl({
    required this.client,
    required this.baseUrl,
    this.defaultHeaders = const {},
  });

  @override
  Future<List<MovieDto>> search(String query, {int page = 1}) async {
    final uri = Uri.parse('$baseUrl/movie/search').replace(
      queryParameters: {
        'query': query,
        'page': '$page',
        'limit': '50',
      },
    );

    final resp = await client.get(uri, headers: defaultHeaders);

    if (resp.statusCode != 200) {
      throw Exception('Remote error: ${resp.statusCode}');
    }

    final decoded = jsonDecode(resp.body);
    if (decoded is! Map<String, dynamic> || decoded['docs'] == null) {
      throw Exception('Invalid API response');
    }

    final items = decoded['docs'] as List<dynamic>;
    return items
        .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<NameSlugDto>> fetchSimpleItems(String endpoint) async {
    final uri = Uri.parse('$baseUrl/$endpoint');
    final resp = await client.get(uri, headers: defaultHeaders);

    if (resp.statusCode != 200) {
      throw Exception('Remote error: ${resp.statusCode}');
    }

    final decoded = jsonDecode(resp.body);

    if (decoded is List) {
      return decoded
          .map((e) => NameSlugDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } else if (decoded is Map<String, dynamic>) {
      final items = decoded['200'] ?? decoded['default'];
      if (items is! List) throw Exception('Invalid API response');
      return items
          .map((e) => NameSlugDto.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Invalid API response');
    }
  }

  @override
  Future<List<SeasonDto>> fetchSeasons(int movieId) async {
    final uri = Uri.parse('$baseUrl/movie/$movieId/seasons');
    final resp = await client.get(uri, headers: defaultHeaders);

    if (resp.statusCode != 200) {
      throw Exception('Remote error: ${resp.statusCode}');
    }

    final decoded = jsonDecode(resp.body);
    if (decoded is! Map<String, dynamic> || decoded['docs'] == null) {
      throw Exception('Invalid API response');
    }

    final items = decoded['docs'] as List<dynamic>;
    return items
        .map((e) => SeasonDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<ReviewDto>> fetchReviews(int movieId, {int page = 1}) async {
    final uri = Uri.parse('$baseUrl/movie/$movieId/reviews').replace(
      queryParameters: {'page': '$page', 'limit': '50'},
    );

    final resp = await client.get(uri, headers: defaultHeaders);

    if (resp.statusCode != 200) {
      throw Exception('Remote error: ${resp.statusCode}');
    }

    final decoded = jsonDecode(resp.body);
    if (decoded is! Map<String, dynamic> || decoded['docs'] == null) {
      throw Exception('Invalid API response');
    }

    final items = decoded['docs'] as List<dynamic>;
    return items
        .map((e) => ReviewDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<PersonDto>> fetchPerson(int personId) async {
    final uri = Uri.parse('$baseUrl/person/$personId');
    final resp = await client.get(uri, headers: defaultHeaders);

    if (resp.statusCode != 200) {
      throw Exception('Remote error: ${resp.statusCode}');
    }

    final decoded = jsonDecode(resp.body) as Map<String, dynamic>;
    return [PersonDto.fromJson(decoded)];
  }
}
