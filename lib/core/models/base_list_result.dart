import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_list_result.freezed.dart';
part 'base_list_result.g.dart';

@Freezed(
  genericArgumentFactories: true,
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
)
class BaseListResult<T> with _$BaseListResult<T>{
  factory BaseListResult({
    required int page,
    required List<T> results,
  }) = _BaseListResult<T>;

  factory BaseListResult.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$BaseListResultFromJson(json, fromJsonT);

}