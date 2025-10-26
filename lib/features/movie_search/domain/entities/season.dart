import 'episode.dart';
import 'media.dart';

class Season {
  final int movieId;
  final int number;
  final int episodesCount;
  final List<Episode> episodes;
  final Media? poster;
  final String? name;
  final String? enName;
  final int? duration;
  final String? description;
  final String? enDescription;
  final String? airDate;

  Season({
    required this.movieId,
    required this.number,
    required this.episodesCount,
    this.episodes = const [],
    this.poster,
    this.name,
    this.enName,
    this.duration,
    this.description,
    this.enDescription,
    this.airDate,
  });
}
