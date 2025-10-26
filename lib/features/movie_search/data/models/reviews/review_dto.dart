import 'package:json_annotation/json_annotation.dart';

part 'review_dto.g.dart';

@JsonSerializable()
class ReviewDto {
  final int id;
  final int movieId;
  final String title;
  final String type;
  final String review;
  final String date;
  final String author;
  final int userRating;
  final int authorId;
  final int reviewLikes;
  final int reviewDislikes;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  const ReviewDto({
    required this.id,
    required this.movieId,
    required this.title,
    required this.type,
    required this.review,
    required this.date,
    required this.author,
    required this.userRating,
    required this.authorId,
    required this.reviewLikes,
    required this.reviewDislikes,
    this.updatedAt,
    this.createdAt,
  });

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewDtoToJson(this);
}
