import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_collection_by_slug_usecase.dart';
import 'collection_by_slug_event.dart';
import 'collection_by_slug_state.dart';

class CollectionBySlugBloc
    extends Bloc<CollectionBySlugEvent, CollectionBySlugState> {
  final GetCollectionBySlugUseCase useCase;

  CollectionBySlugBloc({required this.useCase})
      : super(CollectionBySlugInitial()) {
    on<LoadCollectionBySlugEvent>((event, emit) async {
      emit(CollectionBySlugLoading());
      try {
        final collection = await useCase(event.slug);
        emit(CollectionBySlugLoaded(collection));
      } catch (e) {
        emit(CollectionBySlugError(e.toString()));
      }
    });
  }
}
