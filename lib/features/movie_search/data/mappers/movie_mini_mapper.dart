import '../../domain/entities/person.dart';
import '../models/movie_mini/movie_mini_dto.dart';

extension MovieMiniDtoMapper on MovieMiniDto {
  MovieMini toDomain() => MovieMini(
        id: id,
        name: name,
        alternativeName: alternativeName,
        rating: rating,
        general: general,
        description: description,
        enProfession: enProfession,
      );
}
