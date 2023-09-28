// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseListResult<T> _$BaseListResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseListResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseListResult<T> {
  int get page => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseListResultCopyWith<T, BaseListResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListResultCopyWith<T, $Res> {
  factory $BaseListResultCopyWith(
          BaseListResult<T> value, $Res Function(BaseListResult<T>) then) =
      _$BaseListResultCopyWithImpl<T, $Res, BaseListResult<T>>;
  @useResult
  $Res call({int page, List<T> results});
}

/// @nodoc
class _$BaseListResultCopyWithImpl<T, $Res, $Val extends BaseListResult<T>>
    implements $BaseListResultCopyWith<T, $Res> {
  _$BaseListResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseListResultImplCopyWith<T, $Res>
    implements $BaseListResultCopyWith<T, $Res> {
  factory _$$BaseListResultImplCopyWith(_$BaseListResultImpl<T> value,
          $Res Function(_$BaseListResultImpl<T>) then) =
      __$$BaseListResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int page, List<T> results});
}

/// @nodoc
class __$$BaseListResultImplCopyWithImpl<T, $Res>
    extends _$BaseListResultCopyWithImpl<T, $Res, _$BaseListResultImpl<T>>
    implements _$$BaseListResultImplCopyWith<T, $Res> {
  __$$BaseListResultImplCopyWithImpl(_$BaseListResultImpl<T> _value,
      $Res Function(_$BaseListResultImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$BaseListResultImpl<T>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseListResultImpl<T> implements _BaseListResult<T> {
  _$BaseListResultImpl({required this.page, required final List<T> results})
      : _results = results;

  factory _$BaseListResultImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseListResultImplFromJson(json, fromJsonT);

  @override
  final int page;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'BaseListResult<$T>(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseListResultImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListResultImplCopyWith<T, _$BaseListResultImpl<T>> get copyWith =>
      __$$BaseListResultImplCopyWithImpl<T, _$BaseListResultImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseListResultImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseListResult<T> implements BaseListResult<T> {
  factory _BaseListResult(
      {required final int page,
      required final List<T> results}) = _$BaseListResultImpl<T>;

  factory _BaseListResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseListResultImpl<T>.fromJson;

  @override
  int get page;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$BaseListResultImplCopyWith<T, _$BaseListResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
