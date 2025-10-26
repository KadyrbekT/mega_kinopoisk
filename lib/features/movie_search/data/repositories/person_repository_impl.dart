import '../../domain/entities/person.dart';
import '../../domain/repositpries/person_repository.dart';
import '../data_sources/person_remote_data_source.dart';
import '../mappers/person_mapper.dart';

class PersonRepositoryImpl implements PersonRepository {
  final PersonRemoteDataSource remote;

  PersonRepositoryImpl({required this.remote});

  @override
  Future<PaginatedPersons> searchPersons({
    String? query,
    int page = 0,
    int limit = 20,
    Map<String, dynamic>? filters,
  }) async {
    final dtoPage = await remote.searchPersons(
      query: query,
      page: page,
      limit: limit,
      filters: filters,
    );

    final persons = dtoPage.docs.map((d) => d.toDomain()).toList();

    return PaginatedPersons(
      docs: persons,
      total: dtoPage.total,
      page: dtoPage.page,
      pages: dtoPage.pages,
      limit: dtoPage.limit,
    );
  }

  @override
  Future<Person> getPerson(int id) async {
    final dto = await remote.fetchPerson(id);
    return dto.toDomain();
  }
}
