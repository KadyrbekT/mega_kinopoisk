import '../entities/person.dart';

abstract class PersonRepository {
  Future<PaginatedPersons> searchPersons({
    String? query,
    int page = 0,
    int limit = 20,
    Map<String, dynamic>? filters,
  });
  Future<Person> getPerson(int id);
}

class PaginatedPersons {
  final List<Person> docs;
  final int total;
  final int page;
  final int pages;
  final int limit;

  PaginatedPersons({
    required this.docs,
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });
}
