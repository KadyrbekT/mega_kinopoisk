import '../entities/season.dart';
import '../repositpries/season_repository.dart';

class GetSeasons {
  final SeasonRepository repository;

  GetSeasons(this.repository);

  Future<List<Season>> call(int movieId) async {
    return repository.getSeasons(movieId);
  }
}
