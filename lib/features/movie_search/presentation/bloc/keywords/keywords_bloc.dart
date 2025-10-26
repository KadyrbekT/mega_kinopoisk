import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/search_keywords_usecase.dart';
import 'keywords_event.dart';
import 'keywords_state.dart';

class KeywordsBloc extends Bloc<KeywordsEvent, KeywordsState> {
  final SearchKeywordsUseCase useCase;

  KeywordsBloc(this.useCase) : super(KeywordsInitial()) {
    on<KeywordsSearchRequested>((event, emit) async {
      emit(KeywordsLoading());
      try {
        final result = await useCase.call(event.query);
        emit(KeywordsLoaded(result));
      } catch (e) {
        emit(KeywordsError('Ошибка при поиске: $e'));
      }
    });
  }
}
