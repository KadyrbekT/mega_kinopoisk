part of 'person_awards_bloc.dart';

abstract class PersonAwardsEvent {}

class LoadPersonAwardsEvent extends PersonAwardsEvent {
  final int page;
  final int limit;

  LoadPersonAwardsEvent({this.page = 1, this.limit = 20});
}
