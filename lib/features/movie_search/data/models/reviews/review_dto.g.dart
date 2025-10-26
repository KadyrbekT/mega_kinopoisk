// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => ReviewDto(
      id: (json['id'] as num).toInt(),
      movieId: (json['movieId'] as num).toInt(),
      title: json['title'] as String,
      type: json['type'] as String,
      review: json['review'] as String,
      date: json['date'] as String,
      author: json['author'] as String,
      userRating: (json['userRating'] as num).toInt(),
      authorId: (json['authorId'] as num).toInt(),
      reviewLikes: (json['reviewLikes'] as num).toInt(),
      reviewDislikes: (json['reviewDislikes'] as num).toInt(),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ReviewDtoToJson(ReviewDto instance) => <String, dynamic>{
      'id': instance.id,
      'movieId': instance.movieId,
      'title': instance.title,
      'type': instance.type,
      'review': instance.review,
      'date': instance.date,
      'author': instance.author,
      'userRating': instance.userRating,
      'authorId': instance.authorId,
      'reviewLikes': instance.reviewLikes,
      'reviewDislikes': instance.reviewDislikes,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
