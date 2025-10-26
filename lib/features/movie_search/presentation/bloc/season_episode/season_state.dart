import '../../../domain/entities/season.dart';

abstract class SeasonState {}

class SeasonInitial extends SeasonState {}

class SeasonLoading extends SeasonState {}

class SeasonLoaded extends SeasonState {
  final List<Season> seasons;

  SeasonLoaded(this.seasons);
}

class SeasonError extends SeasonState {
  final String message;

  SeasonError(this.message);
}
