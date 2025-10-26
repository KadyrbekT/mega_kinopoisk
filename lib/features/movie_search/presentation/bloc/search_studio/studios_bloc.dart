import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/studio_usecases/search_studios_usecase.dart';
import 'studios_event.dart';
import 'studios_state.dart';

class StudiosBloc extends Bloc<StudiosEvent, StudiosState> {
  final SearchStudiosUseCase useCase;

  StudiosBloc(this.useCase) : super(StudiosInitial()) {
    on<StudiosSearchRequested>((event, emit) async {
      emit(StudiosLoading());
      try {
        final studios = await useCase.call(event.query);
        emit(StudiosLoaded(studios));
      } catch (e) {
        emit(StudiosError(e.toString()));
      }
    });
  }
}
