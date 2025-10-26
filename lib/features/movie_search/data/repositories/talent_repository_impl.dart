import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/repositpries/talent_repository.dart';
import '../models/talent.dart';
import '../models/talent_dto.dart';

class TalentRepositoryImpl implements TalentRepository {
  final http.Client client;
  final String baseUrl;

  TalentRepositoryImpl({required this.client, required this.baseUrl});

  @override
  Future<List<Talent>> searchTalentByName(String name) async {
    final response =
        await client.get(Uri.parse('$baseUrl/talents?query=$name'));
    if (response.statusCode != 200) {
      throw Exception('Ошибка загрузки талантов');
    }
    final data = jsonDecode(response.body);
    final docs = (data['docs'] as List)
        .map((json) => TalentDTO.fromJson(json).toDomain())
        .toList();
    return docs;
  }
}
