import '../repositpries/person_repository.dart';

class SearchPersonsParams {
  final String query;
  final int page;

  const SearchPersonsParams({required this.query, this.page = 1});
}

class SearchPersons {
  final PersonRepository repository;

  SearchPersons(this.repository);

  Future<PaginatedPersons> call(SearchPersonsParams params) async {
    final paginated = await repository.searchPersons(
      query: params.query,
      page: params.page,
    );
    return paginated;
  }
}
