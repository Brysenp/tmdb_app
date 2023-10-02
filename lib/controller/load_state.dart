import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'load_state.freezed.dart';

@Freezed(
  genericArgumentFactories: true,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none
)
sealed class LoadState<T> with _$LoadState<T>{
  const factory LoadState.data(T data) = Data;
  const factory LoadState.error(String message, int? code) = Error;
  const factory LoadState.loading() = Loading;
}