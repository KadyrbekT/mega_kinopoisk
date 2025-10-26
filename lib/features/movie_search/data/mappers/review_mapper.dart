import '../../domain/entities/review.dart';
import '../models/reviews/review_dto.dart';

extension ReviewMapper on ReviewDto {
  Review toDomain() => Review(
        id: id,
        movieId: movieId,
        title: title,
        type: type,
        review: review,
        date: date,
        author: author,
        userRating: userRating,
        authorId: authorId,
        reviewLikes: reviewLikes,
        reviewDislikes: reviewDislikes,
      );
}
