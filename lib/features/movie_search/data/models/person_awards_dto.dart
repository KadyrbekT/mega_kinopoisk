import '../../domain/entities/award.dart' as domain_award;
import '../../domain/entities/person_awards.dart' as domain_person;

class AwardDTO {
  final String title;
  final int year;

  AwardDTO({required this.title, required this.year});

  factory AwardDTO.fromJson(Map<String, dynamic> json) =>
      AwardDTO(title: json['title'], year: json['year']);

  domain_award.Award toDomain() => domain_award.Award(title: title, year: year);
}

class NominationDTO {
  final AwardDTO award;
  final String title;

  NominationDTO({required this.award, required this.title});

  factory NominationDTO.fromJson(Map<String, dynamic> json) => NominationDTO(
        award: AwardDTO.fromJson(json['award']),
        title: json['title'],
      );

  domain_person.Nomination toDomain() => domain_person.Nomination(
        award: domain_person.Award(
          title: award.title,
          year: award.year,
        ),
        title: title,
      );
}

class MovieDTO {
  final int id;
  final String name;
  final num? rating;

  MovieDTO({required this.id, required this.name, this.rating});

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      MovieDTO(id: json['id'], name: json['name'], rating: json['rating']);

  domain_person.Movie toDomain() =>
      domain_person.Movie(id: id, name: name, rating: rating);
}

class PersonAwardsDTO {
  final int personId;
  final NominationDTO nomination;
  final bool winning;
  final MovieDTO movie;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  PersonAwardsDTO({
    required this.personId,
    required this.nomination,
    required this.winning,
    required this.movie,
    this.createdAt,
    this.updatedAt,
  });

  factory PersonAwardsDTO.fromJson(Map<String, dynamic> json) =>
      PersonAwardsDTO(
        personId: json['personId'],
        nomination: NominationDTO.fromJson(json['nomination']),
        winning: json['winning'] ?? false,
        movie: MovieDTO.fromJson(json['movie']),
        createdAt: json['createdAt'] != null
            ? DateTime.parse(json['createdAt'])
            : null,
        updatedAt: json['updatedAt'] != null
            ? DateTime.parse(json['updatedAt'])
            : null,
      );

  domain_person.PersonAwards toDomain() => domain_person.PersonAwards(
        personId: personId,
        nomination: nomination.toDomain(),
        winning: winning,
        movie: movie.toDomain(),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
