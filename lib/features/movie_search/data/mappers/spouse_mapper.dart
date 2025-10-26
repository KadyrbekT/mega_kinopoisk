import '../../domain/entities/person.dart';
import '../models/actors_directors/spouses/spouse_dto.dart';

extension SpouseDtoMapper on SpouseDto {
  Spouse toDomain() {
    return Spouse(
      id: id,
      name: name,
      divorced: divorced,
      divorcedReason: divorcedReason,
      sex: sex,
      children: children,
      relation: relation,
    );
  }
}
