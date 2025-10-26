import '../entities/person.dart';
import '../repositpries/person_repository.dart';

class GetPerson {
  final PersonRepository repo;
  GetPerson(this.repo);
  Future<Person> call(int id) => repo.getPerson(id);
}
