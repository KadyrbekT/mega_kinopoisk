import '../../../data/models/talent.dart';

abstract class TalentSearchState {}

class TalentSearchInitial extends TalentSearchState {}
class TalentSearchLoading extends TalentSearchState {}
class TalentSearchLoaded extends TalentSearchState {
  final List<Talent> results;
  TalentSearchLoaded(this.results);
}
class TalentSearchError extends TalentSearchState {
  final String message;
  TalentSearchError(this.message);
}
