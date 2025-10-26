import '../entities/person_awards.dart';

abstract class PersonAwardsRepository {
  Future<List<PersonAwards>> getPersonAwards({int page = 1, int limit = 20});
}
