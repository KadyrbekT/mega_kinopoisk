part of 'value_item_dto.dart';

ValueItemDto _$ValueItemDtoFromJson(Map<String, dynamic> json) => ValueItemDto(
      value: json['value'] as String?,
    );

Map<String, dynamic> _$ValueItemDtoToJson(ValueItemDto instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
