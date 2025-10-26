import 'media.dart';

class Episode {
  final int number;
  final String? name;
  final String? enName;
  final String? description;
  final Media? still;
  final String? airDate;
  final String? enDescription;

  Episode({
    required this.number,
    this.name,
    this.enName,
    this.description,
    this.still,
    this.airDate,
    this.enDescription,
  });
}
