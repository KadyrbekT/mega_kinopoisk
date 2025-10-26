import 'package:json_annotation/json_annotation.dart';

part 'movie_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDto {
  final int id;
  final ExternalIdDto? externalId;
  final String? name;
  final String? alternativeName;
  final String? enName;
  final String? type;
  final int? year;
  final String? description;
  final String? shortDescription;
  final String? slogan;
  final String? status;
  final RatingDto? rating;
  final VotesDto? votes;
  final int? movieLength;
  final String? ratingMpaa;
  final int? ageRating;
  final MediaDto? logo;
  final MediaDto? poster;
  final MediaDto? backdrop;
  final VideosDto? videos;
  final List<GenreDto>? genres;
  final List<CountryDto>? countries;
  final List<PersonDto>? persons;
  final BudgetDto? budget;
  final bool? isSeries;

  final List<NameDto>? names;
  final List<ReleaseYearDto>? releaseYears;
  final bool? ticketsOnSale;
  final int? totalSeriesLength;
  final int? seriesLength;
  final int? top10;
  final int? top250;
  final int? typeNumber;
  final List<AwardDto>? awards;

  const MovieDto({
    required this.id,
    this.externalId,
    this.name,
    this.alternativeName,
    this.enName,
    this.type,
    this.year,
    this.description,
    this.shortDescription,
    this.slogan,
    this.status,
    this.rating,
    this.votes,
    this.movieLength,
    this.ratingMpaa,
    this.ageRating,
    this.logo,
    this.poster,
    this.backdrop,
    this.videos,
    this.genres,
    this.countries,
    this.persons,
    this.budget,
    this.isSeries,
    this.names,
    this.releaseYears,
    this.ticketsOnSale,
    this.totalSeriesLength,
    this.seriesLength,
    this.top10,
    this.top250,
    this.typeNumber,
    this.awards,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDtoToJson(this);
}

@JsonSerializable()
class NameDto {
  final String? name;
  final String? language;
  final String? type;

  const NameDto({this.name, this.language, this.type});

  factory NameDto.fromJson(Map<String, dynamic> json) =>
      _$NameDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NameDtoToJson(this);
}

@JsonSerializable()
class ReleaseYearDto {
  final int? start;
  final int? end;

  const ReleaseYearDto({this.start, this.end});

  factory ReleaseYearDto.fromJson(Map<String, dynamic> json) =>
      _$ReleaseYearDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseYearDtoToJson(this);
}

@JsonSerializable()
class ExternalIdDto {
  final String? kpHD;
  final String? imdb;
  final int? tmdb;

  const ExternalIdDto({this.kpHD, this.imdb, this.tmdb});

  factory ExternalIdDto.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdDtoToJson(this);
}

@JsonSerializable()
class RatingDto {
  final double? kp;
  final double? imdb;
  final double? tmdb;
  final double? filmCritics;
  final double? russianFilmCritics;

  @JsonKey(name: 'await')
  final double? awaitRating; // безопасное имя вместо 'await'

  const RatingDto({
    this.kp,
    this.imdb,
    this.tmdb,
    this.filmCritics,
    this.russianFilmCritics,
    this.awaitRating,
  });

  factory RatingDto.fromJson(Map<String, dynamic> json) =>
      _$RatingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RatingDtoToJson(this);
}

@JsonSerializable()
class VotesDto {
  final int? kp;
  final int? imdb;
  final int? tmdb;
  final int? filmCritics;
  final int? russianFilmCritics;

  @JsonKey(name: 'await')
  final int? awaitVotes;

  const VotesDto({
    this.kp,
    this.imdb,
    this.tmdb,
    this.filmCritics,
    this.russianFilmCritics,
    this.awaitVotes,
  });

  factory VotesDto.fromJson(Map<String, dynamic> json) =>
      _$VotesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VotesDtoToJson(this);
}

@JsonSerializable()
class MediaDto {
  final String? url;
  final String? previewUrl;

  const MediaDto({this.url, this.previewUrl});

  factory MediaDto.fromJson(Map<String, dynamic> json) =>
      _$MediaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDtoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VideosDto {
  final List<TrailerDto>? trailers;

  const VideosDto({this.trailers});

  factory VideosDto.fromJson(Map<String, dynamic> json) =>
      _$VideosDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VideosDtoToJson(this);
}

@JsonSerializable()
class TrailerDto {
  final String? url;
  final String? name;
  final String? site;
  final int? size;
  final String? type;

  const TrailerDto({
    this.url,
    this.name,
    this.site,
    this.size,
    this.type,
  });

  factory TrailerDto.fromJson(Map<String, dynamic> json) =>
      _$TrailerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerDtoToJson(this);
}

@JsonSerializable()
class GenreDto {
  final String? name;

  const GenreDto({this.name});

  factory GenreDto.fromJson(Map<String, dynamic> json) =>
      _$GenreDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenreDtoToJson(this);
}

@JsonSerializable()
class CountryDto {
  final String? name;

  const CountryDto({this.name});

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}

@JsonSerializable()
class PersonDto {
  final int? id;
  final String? photo;
  final String? name;
  final String? enName;
  final String? description;
  final String? profession;
  final String? enProfession;

  const PersonDto({
    this.id,
    this.photo,
    this.name,
    this.enName,
    this.description,
    this.profession,
    this.enProfession,
  });

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PersonDtoToJson(this);
}

@JsonSerializable()
class BudgetDto {
  final num? value;
  final String? currency;

  const BudgetDto({this.value, this.currency});

  factory BudgetDto.fromJson(Map<String, dynamic> json) =>
      _$BudgetDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BudgetDtoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieSearchResultDto {
  final List<MovieDto> docs;
  final int total;
  final int limit;
  final int page;
  final int pages;

  const MovieSearchResultDto({
    required this.docs,
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
  });

  factory MovieSearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$MovieSearchResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieSearchResultDtoToJson(this);
}

@JsonSerializable()
class FactDto {
  final String? value;
  final String? type;
  final bool? spoiler;

  const FactDto({this.value, this.type, this.spoiler});

  factory FactDto.fromJson(Map<String, dynamic> json) =>
      _$FactDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FactDtoToJson(this);
}

@JsonSerializable()
class ReviewInfoDto {
  final int? count;
  final int? positiveCount;
  final String? percentage;

  const ReviewInfoDto({this.count, this.positiveCount, this.percentage});

  factory ReviewInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewInfoDtoToJson(this);
}

@JsonSerializable()
class SeasonInfoDto {
  final int? number;
  final int? episodesCount;

  const SeasonInfoDto({this.number, this.episodesCount});

  factory SeasonInfoDto.fromJson(Map<String, dynamic> json) =>
      _$SeasonInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonInfoDtoToJson(this);
}

@JsonSerializable()
class FeeItemDto {
  final num? value;
  final String? currency;

  const FeeItemDto({this.value, this.currency});

  factory FeeItemDto.fromJson(Map<String, dynamic> json) =>
      _$FeeItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FeeItemDtoToJson(this);
}

@JsonSerializable()
class FeesDto {
  final FeeItemDto? world;
  final FeeItemDto? russia;
  final FeeItemDto? usa;

  const FeesDto({this.world, this.russia, this.usa});

  factory FeesDto.fromJson(Map<String, dynamic> json) =>
      _$FeesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FeesDtoToJson(this);
}

@JsonSerializable()
class AwardDto {
  final NominationDto? nomination;
  final bool? winning;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? movieId;

  const AwardDto({
    this.nomination,
    this.winning,
    this.createdAt,
    this.updatedAt,
    this.movieId,
  });

  factory AwardDto.fromJson(Map<String, dynamic> json) =>
      _$AwardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AwardDtoToJson(this);
}

@JsonSerializable()
class NominationDto {
  final AwardDetailDto? award;
  final String? title;

  const NominationDto({this.award, this.title});

  factory NominationDto.fromJson(Map<String, dynamic> json) =>
      _$NominationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NominationDtoToJson(this);
}

@JsonSerializable()
class AwardDetailDto {
  final String? title;
  final int? year;

  const AwardDetailDto({this.title, this.year});

  factory AwardDetailDto.fromJson(Map<String, dynamic> json) =>
      _$AwardDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AwardDetailDtoToJson(this);
}

@JsonSerializable()
class NameSlugDto {
  final String name;
  final String slug;

  const NameSlugDto({required this.name, required this.slug});

  factory NameSlugDto.fromJson(Map<String, dynamic> json) =>
      _$NameSlugDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NameSlugDtoToJson(this);
}
