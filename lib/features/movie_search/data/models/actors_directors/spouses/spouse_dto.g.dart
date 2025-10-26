part of 'spouse_dto.dart';

SpouseDto _$SpouseDtoFromJson(Map<String, dynamic> json) => SpouseDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      divorced: json['divorced'] as bool?,
      divorcedReason: json['divorcedReason'] as String?,
      sex: json['sex'] as String?,
      children: (json['children'] as num?)?.toInt(),
      relation: json['relation'] as String?,
    );

Map<String, dynamic> _$SpouseDtoToJson(SpouseDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'divorced': instance.divorced,
      'divorcedReason': instance.divorcedReason,
      'sex': instance.sex,
      'children': instance.children,
      'relation': instance.relation,
    };
