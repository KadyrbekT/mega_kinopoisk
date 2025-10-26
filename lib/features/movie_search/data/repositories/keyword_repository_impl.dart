import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/keyword.dart';
import '../../domain/repositpries/keyword_repository.dart';
import '../models/keyword_dto.dart';

class KeywordRepositoryImpl implements KeywordRepository {
  final http.Client client;
  final String baseUrl;

  KeywordRepositoryImpl({
    required this.client,
    required this.baseUrl,
  });

  @override
  Future<List<Keyword>> searchKeywords(String query) async {
    final uri = Uri.parse('$baseUrl/keywords?query=$query');
    final response = await client.get(uri);

    if (response.statusCode != 200) {
      throw Exception(
          'Ошибка ${response.statusCode}: не удалось получить ключевые слова');
    }

    final decoded = jsonDecode(response.body);
    final List<dynamic> docs = decoded['docs'] ?? [];

    return docs.map((e) => KeywordDTO.fromJson(e).toDomain()).toList();
  }
}
