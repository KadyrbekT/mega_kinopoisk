import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/studios/studio.dart';
import '../models/studio_dto.dart';

abstract class StudioRepository {
  Future<List<Studio>> searchStudios(String query);
}

class StudioRepositoryImpl implements StudioRepository {
  final http.Client client;
  final String baseUrl;

  StudioRepositoryImpl({required this.client, required this.baseUrl});

  @override
  Future<List<Studio>> searchStudios(String query) async {
    final response = await client.get(Uri.parse('$baseUrl/studios?query=$query'));
    if (response.statusCode != 200) {
      throw Exception('Ошибка загрузки студий');
    }
    final data = jsonDecode(response.body);
    final docs = (data['docs'] as List).map((json) => StudioDTO.fromJson(json).toDomain()).toList();
    return docs;
  }
}
