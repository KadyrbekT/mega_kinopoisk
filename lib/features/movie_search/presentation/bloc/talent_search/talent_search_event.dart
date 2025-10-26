abstract class TalentSearchEvent {}

class LoadTalentByNameEvent extends TalentSearchEvent {
  final String name;

  LoadTalentByNameEvent(this.name);
}
