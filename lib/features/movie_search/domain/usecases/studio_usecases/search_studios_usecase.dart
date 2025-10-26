import '../../entities/studios/studio.dart';

abstract class SearchStudiosUseCase {
  Future<List<Studio>> call(String query);
}
