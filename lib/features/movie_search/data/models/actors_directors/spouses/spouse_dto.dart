import 'package:json_annotation/json_annotation.dart';

part 'spouse_dto.g.dart';

@JsonSerializable()
class SpouseDto {
  final int id;
  final String? name;
  final bool? divorced;
  final String? divorcedReason;
  final String? sex;
  final int? children;
  final String? relation;

  SpouseDto({
    required this.id,
    this.name,
    this.divorced,
    this.divorcedReason,
    this.sex,
    this.children,
    this.relation,
  });

  factory SpouseDto.fromJson(Map<String, dynamic> json) =>
      _$SpouseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SpouseDtoToJson(this);
}
