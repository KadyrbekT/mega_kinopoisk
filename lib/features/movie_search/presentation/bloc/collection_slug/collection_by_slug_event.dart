abstract class CollectionBySlugEvent {}

class LoadCollectionBySlugEvent extends CollectionBySlugEvent {
  final String slug;

  LoadCollectionBySlugEvent(this.slug);
}
