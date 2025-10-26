import '../entities/collection.dart';
import '../repositpries/collection_repository.dart';

class GetCollectionBySlugUseCase {
  final CollectionRepository repository;

  GetCollectionBySlugUseCase({required this.repository});

  Future<Collection> call(String slug) async {
    return repository.getCollectionBySlug(slug);
  }
}
