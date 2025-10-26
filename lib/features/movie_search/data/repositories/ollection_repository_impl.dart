import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/collection.dart';
import '../../domain/repositpries/collection_repository.dart';
import '../models/collection_dto.dart';

class CollectionRepositoryImpl implements CollectionRepository {
  final http.Client client;
  final String baseUrl;

  CollectionRepositoryImpl({required this.client, required this.baseUrl});

  Future<Collection> getCollectionBySlug(String slug) async {
    final response = await client.get(Uri.parse('$baseUrl/collections/$slug'));
    if (response.statusCode != 200) {
      throw Exception('Ошибка загрузки коллекции');
    }
    final data = jsonDecode(response.body);
    return CollectionDTO.fromJson(data).toDomain();
  }
}
