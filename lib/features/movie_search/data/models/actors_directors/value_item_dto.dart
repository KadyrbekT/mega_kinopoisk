import 'package:json_annotation/json_annotation.dart';

part 'value_item_dto.g.dart';

@JsonSerializable()
class ValueItemDto {
  final String? value;

  ValueItemDto({this.value});

  factory ValueItemDto.fromJson(Map<String, dynamic> json) => _$ValueItemDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ValueItemDtoToJson(this);
}
