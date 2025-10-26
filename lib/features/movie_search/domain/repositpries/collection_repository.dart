import '../entities/collection.dart';

abstract class CollectionRepository {
  Future<Collection> getCollectionBySlug(String slug);
}
