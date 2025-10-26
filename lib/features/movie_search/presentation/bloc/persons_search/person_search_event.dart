import 'package:equatable/equatable.dart';

abstract class PersonSearchEvent extends Equatable {
  const PersonSearchEvent();
  @override
  List<Object?> get props => [];
}

class PersonSearchRequested extends PersonSearchEvent {
  final String query;
  final int page;

  const PersonSearchRequested({required this.query, this.page = 1});

  @override
  List<Object?> get props => [query, page];
}
