import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mega_kinopoisk/features/movie_search/data/models/persons/person_dto.dart';
import 'package:mega_kinopoisk/features/movie_search/data/models/actors_directors/paged_response_dto.dart';
import 'package:mega_kinopoisk/features/movie_search/data/data_sources/person_remote_data_source.dart';

class PersonRemoteDataSourceImpl implements PersonRemoteDataSource {
  final http.Client client;
  final String baseUrl;
  final Map<String, String> defaultHeaders;

  PersonRemoteDataSourceImpl({
    required this.client,
    required this.baseUrl,
    required this.defaultHeaders,
  });

  @override
  Future<PagedResponseDto<PersonDto>> searchPersons({
    String? query,
    int page = 0,
    int limit = 20,
    Map<String, dynamic>? filters,
  }) async {
    final uri = Uri.parse('$baseUrl/search/persons').replace(
      queryParameters: {
        if (query != null && query.isNotEmpty) 'q': query,
        'page': page.toString(),
        'limit': limit.toString(),
        if (filters != null)
          ...filters.map((k, v) => MapEntry(k, v.toString())),
      },
    );

    final response = await client.get(uri, headers: defaultHeaders);

    if (response.statusCode != 200) {
      throw HttpException('Failed to fetch persons: ${response.statusCode}');
    }

    final Map<String, dynamic> json =
        jsonDecode(response.body) as Map<String, dynamic>;
    return PagedResponseDto<PersonDto>.fromJson(
      json,
      (obj) => PersonDto.fromJson(obj as Map<String, dynamic>),
    );
  }

  @override
  Future<PersonDto> fetchPerson(int id) async {
    final uri = Uri.parse('$baseUrl/persons/$id');

    final response = await client.get(uri, headers: defaultHeaders);

    if (response.statusCode != 200) {
      throw HttpException('Failed to fetch person: ${response.statusCode}');
    }

    final Map<String, dynamic> json =
        jsonDecode(response.body) as Map<String, dynamic>;
    return PersonDto.fromJson(json);
  }
}

class HttpException implements Exception {
  final String message;

  HttpException(this.message);

  @override
  String toString() => 'HttpException: $message';
}
