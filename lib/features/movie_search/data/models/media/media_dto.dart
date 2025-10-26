import 'package:json_annotation/json_annotation.dart';

part 'media_dto.g.dart';

@JsonSerializable()
class MediaDto {
  final String? url;
  final String? previewUrl;

  const MediaDto({
    this.url,
    this.previewUrl,
  });

  factory MediaDto.fromJson(Map<String, dynamic> json) =>
      _$MediaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDtoToJson(this);
}
