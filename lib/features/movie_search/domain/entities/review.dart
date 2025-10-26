import 'package:equatable/equatable.dart';

class Review extends Equatable {
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

  const Review({
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
  });

  @override
  List<Object?> get props => [id];
}
