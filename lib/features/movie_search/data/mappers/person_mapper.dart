import '../../domain/entities/person.dart';
import '../models/persons/person_dto.dart';
import '../models/actors_directors/value_item_dto.dart';

import 'spouse_mapper.dart';
import 'movie_mini_mapper.dart';

extension PersonDtoMapper on PersonDto {
  Person toDomain() {
    List<String> mapValueItems(List<ValueItemDto>? items) =>
        items?.map((e) => e.value ?? '').where((s) => s.isNotEmpty).toList() ??
        [];

    return Person(
      id: id,
      name: name,
      enName: enName,
      photo: photo,
      sex: sex,
      growth: growth,
      birthday: birthday,
      death: death,
      age: age,
      birthPlace: mapValueItems(birthPlace),
      deathPlace: mapValueItems(deathPlace),
      spouses: spouses?.map((s) => s.toDomain()).toList() ?? [],
      countAwards: countAwards,
      profession: mapValueItems(profession),
      facts: mapValueItems(facts),
      movies: movies?.map((m) => m.toDomain()).toList() ?? [],
      updatedAt: updatedAt,
      createdAt: createdAt,
    );
  }
}
