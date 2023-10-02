import 'package:freezed_annotation/freezed_annotation.dart';

import 'author.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review{
  factory Review({
    required String id,
    @JsonKey(name: 'author_details') Author? authorDetails,
    String? author,
    String? content,
    @JsonKey(name: 'created_at') DateTime? createdAt,
}) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}