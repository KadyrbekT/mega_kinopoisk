import '../../data/models/talent.dart';
import '../repositpries/talent_repository.dart';

class SearchTalentUseCase {
  final TalentRepository repository;

  SearchTalentUseCase({required this.repository});

  Future<List<Talent>> call(String name) async {
    return repository.searchTalentByName(name);
  }
}
