import 'package:bloc/bloc.dart';
import '../../../domain/usecases/search_persons.dart';
import 'person_search_event.dart';
import 'person_search_state.dart';

class PersonSearchBloc extends Bloc<PersonSearchEvent, PersonSearchState> {
  final SearchPersons searchPersons;

  PersonSearchBloc({required this.searchPersons})
      : super(PersonSearchInitial()) {
    on<PersonSearchRequested>(_onSearchRequested);
  }

  Future<void> _onSearchRequested(
    PersonSearchRequested event,
    Emitter<PersonSearchState> emit,
  ) async {
    emit(PersonSearchLoading());

    try {
      final paginated = await searchPersons(
        SearchPersonsParams(query: event.query, page: event.page),
      );

      emit(PersonSearchSuccess(
        results: paginated.docs,
        total: paginated.total,
        page: paginated.page,
        pages: paginated.pages,
      ));
    } catch (e) {
      emit(PersonSearchFailure(e.toString()));
    }
  }
}
