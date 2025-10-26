import '../../domain/entities/person_awards.dart';
import '../../domain/repositpries/person_awards_repository.dart';
import '../data_sources/person_awards_remote_data_source.dart';

class PersonAwardsRepositoryImpl implements PersonAwardsRepository {
  final PersonAwardsRemoteDataSource remote;

  PersonAwardsRepositoryImpl({required this.remote});

  @override
  Future<List<PersonAwards>> getPersonAwards(
      {int page = 1, int limit = 20}) async {
    final dtos = await remote.fetchPersonAwards(page: page, limit: limit);
    return dtos.map((dto) => dto.toDomain()).toList();
  }
}
