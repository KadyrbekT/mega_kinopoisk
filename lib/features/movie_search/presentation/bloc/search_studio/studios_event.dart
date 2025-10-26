abstract class StudiosEvent {}

class StudiosSearchRequested extends StudiosEvent {
  final String query;
  StudiosSearchRequested(this.query);
}
