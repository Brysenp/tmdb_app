// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['id'] as String,
      authorDetails: json['author_details'] == null
          ? null
          : Author.fromJson(json['author_details'] as Map<String, dynamic>),
      author: json['author'] as String?,
      content: json['content'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_details': instance.authorDetails,
      'author': instance.author,
      'content': instance.content,
      'created_at': instance.createdAt?.toIso8601String(),
    };
