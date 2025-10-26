import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String? originalTitle;
  final int? year;
  final String? description;
  final String? shortDescription;
  final String? posterUrl;
  final double? rating;
  final List<String> genres;
  final List<String> countries;
  final List<String> persons;
  final String? trailerUrl;
  final String? slogan;
  final bool isSeries;

  const Movie({
    required this.id,
    required this.title,
    this.originalTitle,
    this.year,
    this.description,
    this.shortDescription,
    this.posterUrl,
    this.rating,
    this.genres = const [],
    this.countries = const [],
    this.persons = const [],
    this.trailerUrl,
    this.slogan,
    this.isSeries = false,
  });

  @override
  List<Object?> get props => [id, title];
}


