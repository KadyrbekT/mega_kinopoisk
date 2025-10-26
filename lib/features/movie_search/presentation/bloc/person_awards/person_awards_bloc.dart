import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/person_awards.dart';
import '../../../domain/usecases/get_person_awards_usecase.dart';

part 'person_awards_event.dart';
part 'person_awards_state.dart';

class PersonAwardsBloc extends Bloc<PersonAwardsEvent, PersonAwardsState> {
  final GetPersonAwardsUseCase useCase;

  PersonAwardsBloc({required this.useCase}) : super(PersonAwardsInitial()) {
    on<LoadPersonAwardsEvent>((event, emit) async {
      emit(PersonAwardsLoading());
      try {
        final awards = await useCase(page: event.page, limit: event.limit);
        emit(PersonAwardsLoaded(awards));
      } catch (e) {
        emit(PersonAwardsError(e.toString()));
      }
    });
  }
}
