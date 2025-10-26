// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => MovieDto(
      id: (json['id'] as num).toInt(),
      externalId: json['externalId'] == null
          ? null
          : ExternalIdDto.fromJson(json['externalId'] as Map<String, dynamic>),
      name: json['name'] as String?,
      alternativeName: json['alternativeName'] as String?,
      enName: json['enName'] as String?,
      type: json['type'] as String?,
      year: (json['year'] as num?)?.toInt(),
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      slogan: json['slogan'] as String?,
      status: json['status'] as String?,
      rating: json['rating'] == null
          ? null
          : RatingDto.fromJson(json['rating'] as Map<String, dynamic>),
      votes: json['votes'] == null
          ? null
          : VotesDto.fromJson(json['votes'] as Map<String, dynamic>),
      movieLength: (json['movieLength'] as num?)?.toInt(),
      ratingMpaa: json['ratingMpaa'] as String?,
      ageRating: (json['ageRating'] as num?)?.toInt(),
      logo: json['logo'] == null
          ? null
          : MediaDto.fromJson(json['logo'] as Map<String, dynamic>),
      poster: json['poster'] == null
          ? null
          : MediaDto.fromJson(json['poster'] as Map<String, dynamic>),
      backdrop: json['backdrop'] == null
          ? null
          : MediaDto.fromJson(json['backdrop'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : VideosDto.fromJson(json['videos'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => CountryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      persons: (json['persons'] as List<dynamic>?)
          ?.map((e) => PersonDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      budget: json['budget'] == null
          ? null
          : BudgetDto.fromJson(json['budget'] as Map<String, dynamic>),
      isSeries: json['isSeries'] as bool?,
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => NameDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      releaseYears: (json['releaseYears'] as List<dynamic>?)
          ?.map((e) => ReleaseYearDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketsOnSale: json['ticketsOnSale'] as bool?,
      totalSeriesLength: (json['totalSeriesLength'] as num?)?.toInt(),
      seriesLength: (json['seriesLength'] as num?)?.toInt(),
      top10: (json['top10'] as num?)?.toInt(),
      top250: (json['top250'] as num?)?.toInt(),
      typeNumber: (json['typeNumber'] as num?)?.toInt(),
      awards: (json['awards'] as List<dynamic>?)
          ?.map((e) => AwardDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieDtoToJson(MovieDto instance) => <String, dynamic>{
      'id': instance.id,
      'externalId': instance.externalId?.toJson(),
      'name': instance.name,
      'alternativeName': instance.alternativeName,
      'enName': instance.enName,
      'type': instance.type,
      'year': instance.year,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'slogan': instance.slogan,
      'status': instance.status,
      'rating': instance.rating?.toJson(),
      'votes': instance.votes?.toJson(),
      'movieLength': instance.movieLength,
      'ratingMpaa': instance.ratingMpaa,
      'ageRating': instance.ageRating,
      'logo': instance.logo?.toJson(),
      'poster': instance.poster?.toJson(),
      'backdrop': instance.backdrop?.toJson(),
      'videos': instance.videos?.toJson(),
      'genres': instance.genres?.map((e) => e.toJson()).toList(),
      'countries': instance.countries?.map((e) => e.toJson()).toList(),
      'persons': instance.persons?.map((e) => e.toJson()).toList(),
      'budget': instance.budget?.toJson(),
      'isSeries': instance.isSeries,
      'names': instance.names?.map((e) => e.toJson()).toList(),
      'releaseYears': instance.releaseYears?.map((e) => e.toJson()).toList(),
      'ticketsOnSale': instance.ticketsOnSale,
      'totalSeriesLength': instance.totalSeriesLength,
      'seriesLength': instance.seriesLength,
      'top10': instance.top10,
      'top250': instance.top250,
      'typeNumber': instance.typeNumber,
      'awards': instance.awards?.map((e) => e.toJson()).toList(),
    };

NameDto _$NameDtoFromJson(Map<String, dynamic> json) => NameDto(
      name: json['name'] as String?,
      language: json['language'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NameDtoToJson(NameDto instance) => <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
      'type': instance.type,
    };

ReleaseYearDto _$ReleaseYearDtoFromJson(Map<String, dynamic> json) =>
    ReleaseYearDto(
      start: (json['start'] as num?)?.toInt(),
      end: (json['end'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReleaseYearDtoToJson(ReleaseYearDto instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

ExternalIdDto _$ExternalIdDtoFromJson(Map<String, dynamic> json) =>
    ExternalIdDto(
      kpHD: json['kpHD'] as String?,
      imdb: json['imdb'] as String?,
      tmdb: (json['tmdb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExternalIdDtoToJson(ExternalIdDto instance) =>
    <String, dynamic>{
      'kpHD': instance.kpHD,
      'imdb': instance.imdb,
      'tmdb': instance.tmdb,
    };

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) => RatingDto(
      kp: (json['kp'] as num?)?.toDouble(),
      imdb: (json['imdb'] as num?)?.toDouble(),
      tmdb: (json['tmdb'] as num?)?.toDouble(),
      filmCritics: (json['filmCritics'] as num?)?.toDouble(),
      russianFilmCritics: (json['russianFilmCritics'] as num?)?.toDouble(),
      awaitRating: (json['await'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingDtoToJson(RatingDto instance) => <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'tmdb': instance.tmdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.awaitRating,
    };

VotesDto _$VotesDtoFromJson(Map<String, dynamic> json) => VotesDto(
      kp: (json['kp'] as num?)?.toInt(),
      imdb: (json['imdb'] as num?)?.toInt(),
      tmdb: (json['tmdb'] as num?)?.toInt(),
      filmCritics: (json['filmCritics'] as num?)?.toInt(),
      russianFilmCritics: (json['russianFilmCritics'] as num?)?.toInt(),
      awaitVotes: (json['await'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VotesDtoToJson(VotesDto instance) => <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'tmdb': instance.tmdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.awaitVotes,
    };

MediaDto _$MediaDtoFromJson(Map<String, dynamic> json) => MediaDto(
      url: json['url'] as String?,
      previewUrl: json['previewUrl'] as String?,
    );

Map<String, dynamic> _$MediaDtoToJson(MediaDto instance) => <String, dynamic>{
      'url': instance.url,
      'previewUrl': instance.previewUrl,
    };

VideosDto _$VideosDtoFromJson(Map<String, dynamic> json) => VideosDto(
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) => TrailerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideosDtoToJson(VideosDto instance) => <String, dynamic>{
      'trailers': instance.trailers?.map((e) => e.toJson()).toList(),
    };

TrailerDto _$TrailerDtoFromJson(Map<String, dynamic> json) => TrailerDto(
      url: json['url'] as String?,
      name: json['name'] as String?,
      site: json['site'] as String?,
      size: (json['size'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TrailerDtoToJson(TrailerDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
    };

GenreDto _$GenreDtoFromJson(Map<String, dynamic> json) => GenreDto(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenreDtoToJson(GenreDto instance) => <String, dynamic>{
      'name': instance.name,
    };

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => CountryDto(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CountryDtoToJson(CountryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) => PersonDto(
      id: (json['id'] as num?)?.toInt(),
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      description: json['description'] as String?,
      profession: json['profession'] as String?,
      enProfession: json['enProfession'] as String?,
    );

Map<String, dynamic> _$PersonDtoToJson(PersonDto instance) => <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
      'enName': instance.enName,
      'description': instance.description,
      'profession': instance.profession,
      'enProfession': instance.enProfession,
    };

BudgetDto _$BudgetDtoFromJson(Map<String, dynamic> json) => BudgetDto(
      value: json['value'] as num?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$BudgetDtoToJson(BudgetDto instance) => <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };

MovieSearchResultDto _$MovieSearchResultDtoFromJson(
        Map<String, dynamic> json) =>
    MovieSearchResultDto(
      docs: (json['docs'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$MovieSearchResultDtoToJson(
        MovieSearchResultDto instance) =>
    <String, dynamic>{
      'docs': instance.docs.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };

FactDto _$FactDtoFromJson(Map<String, dynamic> json) => FactDto(
      value: json['value'] as String?,
      type: json['type'] as String?,
      spoiler: json['spoiler'] as bool?,
    );

Map<String, dynamic> _$FactDtoToJson(FactDto instance) => <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
      'spoiler': instance.spoiler,
    };

ReviewInfoDto _$ReviewInfoDtoFromJson(Map<String, dynamic> json) =>
    ReviewInfoDto(
      count: (json['count'] as num?)?.toInt(),
      positiveCount: (json['positiveCount'] as num?)?.toInt(),
      percentage: json['percentage'] as String?,
    );

Map<String, dynamic> _$ReviewInfoDtoToJson(ReviewInfoDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'positiveCount': instance.positiveCount,
      'percentage': instance.percentage,
    };

SeasonInfoDto _$SeasonInfoDtoFromJson(Map<String, dynamic> json) =>
    SeasonInfoDto(
      number: (json['number'] as num?)?.toInt(),
      episodesCount: (json['episodesCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SeasonInfoDtoToJson(SeasonInfoDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'episodesCount': instance.episodesCount,
    };

FeeItemDto _$FeeItemDtoFromJson(Map<String, dynamic> json) => FeeItemDto(
      value: json['value'] as num?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$FeeItemDtoToJson(FeeItemDto instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };

FeesDto _$FeesDtoFromJson(Map<String, dynamic> json) => FeesDto(
      world: json['world'] == null
          ? null
          : FeeItemDto.fromJson(json['world'] as Map<String, dynamic>),
      russia: json['russia'] == null
          ? null
          : FeeItemDto.fromJson(json['russia'] as Map<String, dynamic>),
      usa: json['usa'] == null
          ? null
          : FeeItemDto.fromJson(json['usa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeesDtoToJson(FeesDto instance) => <String, dynamic>{
      'world': instance.world,
      'russia': instance.russia,
      'usa': instance.usa,
    };

AwardDto _$AwardDtoFromJson(Map<String, dynamic> json) => AwardDto(
      nomination: json['nomination'] == null
          ? null
          : NominationDto.fromJson(json['nomination'] as Map<String, dynamic>),
      winning: json['winning'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      movieId: (json['movieId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AwardDtoToJson(AwardDto instance) => <String, dynamic>{
      'nomination': instance.nomination,
      'winning': instance.winning,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'movieId': instance.movieId,
    };

NominationDto _$NominationDtoFromJson(Map<String, dynamic> json) =>
    NominationDto(
      award: json['award'] == null
          ? null
          : AwardDetailDto.fromJson(json['award'] as Map<String, dynamic>),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$NominationDtoToJson(NominationDto instance) =>
    <String, dynamic>{
      'award': instance.award,
      'title': instance.title,
    };

AwardDetailDto _$AwardDetailDtoFromJson(Map<String, dynamic> json) =>
    AwardDetailDto(
      title: json['title'] as String?,
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AwardDetailDtoToJson(AwardDetailDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
    };

NameSlugDto _$NameSlugDtoFromJson(Map<String, dynamic> json) => NameSlugDto(
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$NameSlugDtoToJson(NameSlugDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };
