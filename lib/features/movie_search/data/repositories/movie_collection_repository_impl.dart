import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/movie_collection.dart';
import '../../domain/repositpries/movie_collection_repository.dart';
import '../models/movie_collection_dto.dart';

class MovieCollectionRepositoryImpl implements MovieCollectionRepository {
  final http.Client client;
  final String baseUrl;

  MovieCollectionRepositoryImpl({required this.client, required this.baseUrl});

  @override
  Future<List<MovieCollection>> getCollections() async {
    final response = await client.get(Uri.parse('$baseUrl/collections'));
    if (response.statusCode != 200) {
      throw Exception('Ошибка загрузки коллекций');
    }
    final data = jsonDecode(response.body);
    final docs = (data['docs'] as List)
        .map((json) => MovieCollectionDTO.fromJson(json).toDomain())
        .toList();
    return docs;
  }
}
