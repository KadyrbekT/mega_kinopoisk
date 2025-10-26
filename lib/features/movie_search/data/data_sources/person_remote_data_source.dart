import '../models/persons/person_dto.dart';
import '../models/actors_directors/paged_response_dto.dart';

abstract class PersonRemoteDataSource {
  Future<PagedResponseDto<PersonDto>> searchPersons({
    String? query,
    int page = 0,
    int limit = 20,
    Map<String, dynamic>? filters,
  });
  Future<PersonDto> fetchPerson(int id);
}
