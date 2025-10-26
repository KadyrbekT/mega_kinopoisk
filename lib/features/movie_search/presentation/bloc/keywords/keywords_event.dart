abstract class KeywordsEvent {}

class KeywordsSearchRequested extends KeywordsEvent {
  final String query;
  KeywordsSearchRequested(this.query);
}
