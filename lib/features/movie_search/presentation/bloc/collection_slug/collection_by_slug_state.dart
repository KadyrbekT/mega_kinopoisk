import '../../../domain/entities/collection.dart';

abstract class CollectionBySlugState {}

class CollectionBySlugInitial extends CollectionBySlugState {}
class CollectionBySlugLoading extends CollectionBySlugState {}
class CollectionBySlugLoaded extends CollectionBySlugState {
  final Collection collection;
  CollectionBySlugLoaded(this.collection);
}
class CollectionBySlugError extends CollectionBySlugState {
  final String message;
  CollectionBySlugError(this.message);
}
