import '../entities/person_awards.dart';
import '../repositpries/person_awards_repository.dart';

class GetPersonAwardsUseCase {
  final PersonAwardsRepository repository;

  GetPersonAwardsUseCase(this.repository);

  Future<List<PersonAwards>> call({int page = 1, int limit = 20}) {
    return repository.getPersonAwards(page: page, limit: limit);
  }
}
