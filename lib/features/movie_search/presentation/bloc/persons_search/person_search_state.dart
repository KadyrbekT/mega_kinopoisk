import 'package:equatable/equatable.dart';
import '../../../domain/entities/person.dart';

abstract class PersonSearchState extends Equatable {
  const PersonSearchState();

  @override
  List<Object?> get props => [];
}

class PersonSearchInitial extends PersonSearchState {}

class PersonSearchLoading extends PersonSearchState {}

class PersonSearchSuccess extends PersonSearchState {
  final List<Person> results;
  final int total;
  final int page;
  final int pages;

  const PersonSearchSuccess({
    required this.results,
    required this.total,
    required this.page,
    required this.pages,
  });

  @override
  List<Object?> get props => [results, total, page, pages];
}

class PersonSearchFailure extends PersonSearchState {
  final String message;

  const PersonSearchFailure(this.message);

  @override
  List<Object?> get props => [message];
}
