import '../models/movie_models/movie_dto.dart';
import '../../domain/entities/movie.dart';

extension MovieDtoMapper on MovieDto {
  Movie toDomain() {
    return Movie(
      id: id,
      title: name ?? alternativeName ?? enName ?? 'Без названия',
      originalTitle: enName,
      year: year,
      description: description,
      shortDescription: shortDescription,
      posterUrl: poster?.previewUrl ?? poster?.url,
      rating: rating?.kp ?? rating?.imdb ?? rating?.tmdb,
      genres: (genres ?? [])
          .map((g) => g.name ?? '')
          .where((e) => e.isNotEmpty)
          .toList(),
      countries: (countries ?? [])
          .map((c) => c.name ?? '')
          .where((e) => e.isNotEmpty)
          .toList(),
      persons: (persons ?? [])
          .map((p) => p.name ?? '')
          .where((e) => e.isNotEmpty)
          .toList(),
      trailerUrl: (videos?.trailers?.isNotEmpty ?? false)
          ? videos!.trailers!.first.url
          : null,
      slogan: slogan,
      isSeries: isSeries ?? false,
    );
  }
}


// import '../models/movie_dto.dart';
// import '../../domain/entities/movie.dart';
//
// extension MovieDtoMapper on MovieDto {
//   Movie toDomain() {
//     return Movie(
//       id: id,
//       title: name ?? alternativeName ?? enName ?? 'Без названия',
//       originalTitle: enName,
//       year: year,
//       description: description,
//       shortDescription: shortDescription,
//       posterUrl: poster?.previewUrl ?? poster?.url,
//       rating: rating?.kp ?? rating?.imdb ?? rating?.tmdb,
//       genres: genres?.map((g) => g.name ?? '').where((e) => e.isNotEmpty).toList() ?? [],
//       countries: countries?.map((c) => c.name ?? '').where((e) => e.isNotEmpty).toList() ?? [],
//       persons: persons?.map((p) => p.name ?? '').where((e) => e.isNotEmpty).toList() ?? [],
//       trailerUrl: videos?.trailers?.isNotEmpty == true ? videos!.trailers!.first.url : null,
//       slogan: slogan,
//       isSeries: isSeries ?? false,
//     );
//   }
// }
