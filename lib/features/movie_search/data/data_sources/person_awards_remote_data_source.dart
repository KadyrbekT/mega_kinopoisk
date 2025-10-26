import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/person_awards_dto.dart';

class PersonAwardsRemoteDataSource {
  final String baseUrl;

  PersonAwardsRemoteDataSource({required this.baseUrl});

  Future<List<PersonAwardsDTO>> fetchPersonAwards({int page = 1, int limit = 20}) async {
    final response = await http.get(Uri.parse('$baseUrl/personAwards?page=$page&limit=$limit'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final docs = data['docs'] as List<dynamic>;
      return docs.map((json) => PersonAwardsDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch person awards');
    }
  }
}
