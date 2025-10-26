import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_movie_collections_usecase.dart';
import 'movie_collection_event.dart';
import 'movie_collection_state.dart';

class MovieCollectionBloc
    extends Bloc<MovieCollectionEvent, MovieCollectionState> {
  final GetMovieCollectionsUseCase useCase;

  MovieCollectionBloc({required this.useCase})
      : super(MovieCollectionInitial()) {
    on<LoadCollectionsEvent>((event, emit) async {
      emit(MovieCollectionLoading());
      try {
        final collections = await useCase();
        emit(MovieCollectionLoaded(collections));
      } catch (e) {
        emit(MovieCollectionError(e.toString()));
      }
    });
  }
}
