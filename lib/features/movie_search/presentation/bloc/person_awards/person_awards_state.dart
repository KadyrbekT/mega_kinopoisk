part of 'person_awards_bloc.dart';

abstract class PersonAwardsState {}

class PersonAwardsInitial extends PersonAwardsState {}

class PersonAwardsLoading extends PersonAwardsState {}

class PersonAwardsLoaded extends PersonAwardsState {
  final List<PersonAwards> awards;

  PersonAwardsLoaded(this.awards);
}

class PersonAwardsError extends PersonAwardsState {
  final String message;

  PersonAwardsError(this.message);
}
