import '../entities/keyword.dart';
import '../repositpries/keyword_repository.dart';

class SearchKeywordsUseCase {
  final KeywordRepository repository;

  SearchKeywordsUseCase(this.repository);

  Future<List<Keyword>> call(String query) {
    return repository.searchKeywords(query);
  }
}
