import 'package:json_annotation/json_annotation.dart';

class ReleaseDateConverter implements JsonConverter<DateTime?, String>{

  const ReleaseDateConverter();

  @override
  DateTime? fromJson(String? json) {
    if(json?.trim().isNotEmpty ?? false){
      DateTime.parse(json!);
    }
    return null;
  }

  @override
  String toJson(DateTime? object) {
    return object?.toIso8601String() ?? '';
  }



}