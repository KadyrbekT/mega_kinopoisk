import '../entities/keyword.dart';

abstract class KeywordRepository {
  Future<List<Keyword>> searchKeywords(String query);
}
