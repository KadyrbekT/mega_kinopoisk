import '../../../domain/entities/keyword.dart';

abstract class KeywordsState {}

class KeywordsInitial extends KeywordsState {}

class KeywordsLoading extends KeywordsState {}

class KeywordsLoaded extends KeywordsState {
  final List<Keyword> keywords;

  KeywordsLoaded(this.keywords);
}

class KeywordsError extends KeywordsState {
  final String message;

  KeywordsError(this.message);
}
