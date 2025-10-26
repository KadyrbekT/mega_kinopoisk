import '../../entities/studios/studio.dart';
import 'search_studios_usecase.dart';
import '../../../data/repositories/studio_repository_impl.dart';

class SearchStudiosUseCaseImpl implements SearchStudiosUseCase {
  final StudioRepository repository;

  SearchStudiosUseCaseImpl(this.repository);

  @override
  Future<List<Studio>> call(String query) async {
    return repository.searchStudios(query);
  }
}
