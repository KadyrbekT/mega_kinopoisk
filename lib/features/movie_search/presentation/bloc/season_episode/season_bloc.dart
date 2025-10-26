import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_kinopoisk/features/movie_search/presentation/bloc/season_episode/season_event.dart';
import 'package:mega_kinopoisk/features/movie_search/presentation/bloc/season_episode/season_state.dart';

import '../../../domain/usecases/get_seasons.dart';

class SeasonBloc extends Bloc<SeasonEvent, SeasonState> {
  final GetSeasons getSeasons;

  SeasonBloc({required this.getSeasons}) : super(SeasonInitial()) {
    on<LoadSeasons>((event, emit) async {
      emit(SeasonLoading());
      try {
        final seasons = await getSeasons(event.movieId);
        emit(SeasonLoaded(seasons));
      } catch (e) {
        emit(SeasonError(e.toString()));
      }
    });
  }
}
