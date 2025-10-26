import '../../../domain/entities/studios/studio.dart';

abstract class StudiosState {}

class StudiosInitial extends StudiosState {}

class StudiosLoading extends StudiosState {}

class StudiosLoaded extends StudiosState {
  final List<Studio> studios;

  StudiosLoaded(this.studios);
}

class StudiosError extends StudiosState {
  final String message;

  StudiosError(this.message);
}
