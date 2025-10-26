import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/search_talent_usecase.dart';
import 'talent_search_event.dart';
import 'talent_search_state.dart';

class TalentSearchBloc extends Bloc<TalentSearchEvent, TalentSearchState> {
  final SearchTalentUseCase useCase;

  TalentSearchBloc({required this.useCase}) : super(TalentSearchInitial()) {
    on<LoadTalentByNameEvent>((event, emit) async {
      emit(TalentSearchLoading());
      try {
        final results = await useCase(event.name);
        emit(TalentSearchLoaded(results));
      } catch (e) {
        emit(TalentSearchError(e.toString()));
      }
    });
  }
}
