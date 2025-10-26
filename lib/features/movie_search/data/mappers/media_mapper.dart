import '../../domain/entities/media.dart';
import '../models/media/media_dto.dart';

extension MediaMapper on MediaDto {
  Media toDomain() => Media(url: url, previewUrl: previewUrl);
}
