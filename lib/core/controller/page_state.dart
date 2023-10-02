import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'page_state.freezed.dart';

@Freezed(
  genericArgumentFactories: true,
  map: FreezedMapOptions.none,
)
sealed class PageState<T> with _$PageState<T>{
  const factory PageState.data(List<T> items, bool reachedEnd) = Data;
  const factory PageState.loading() = Loading;
  const factory PageState.error(String message, int? code) = Error;
  const factory PageState.onSubsequentLoad(List<T> items) = OnSubsequentLoad;
  const factory PageState.onSubsequentError(List<T> loadedItems, String message, int? code) = OnSubsequentError;

}