abstract class SeasonEvent {}
class LoadSeasons extends SeasonEvent {
  final int movieId;
  LoadSeasons(this.movieId);
}




