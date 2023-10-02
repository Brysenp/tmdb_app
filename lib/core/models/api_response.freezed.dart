// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'data':
      return ApiResponseSuccess<T>.fromJson(json, fromJsonT);
    case 'clientError':
      return ApiResponseClientError<T>.fromJson(json, fromJsonT);
    case 'serverError':
      return ApiResponseServerError<T>.fromJson(json, fromJsonT);
    case 'unknownError':
      return ApiResponseError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(int code, String message, String? referenceId)
        clientError,
    required TResult Function(int code, String message, String? referenceId)
        serverError,
    required TResult Function(int code, String message, String? referenceId)
        unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(int code, String message, String? referenceId)?
        clientError,
    TResult? Function(int code, String message, String? referenceId)?
        serverError,
    TResult? Function(int code, String message, String? referenceId)?
        unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(int code, String message, String? referenceId)?
        clientError,
    TResult Function(int code, String message, String? referenceId)?
        serverError,
    TResult Function(int code, String message, String? referenceId)?
        unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiResponseSuccessImplCopyWith<T, $Res> {
  factory _$$ApiResponseSuccessImplCopyWith(_$ApiResponseSuccessImpl<T> value,
          $Res Function(_$ApiResponseSuccessImpl<T>) then) =
      __$$ApiResponseSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiResponseSuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseSuccessImpl<T>>
    implements _$$ApiResponseSuccessImplCopyWith<T, $Res> {
  __$$ApiResponseSuccessImplCopyWithImpl(_$ApiResponseSuccessImpl<T> _value,
      $Res Function(_$ApiResponseSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements ApiResponseSuccess<T> {
  const _$ApiResponseSuccessImpl(this.data, {final String? $type})
      : $type = $type ?? 'data';

  factory _$ApiResponseSuccessImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseSuccessImplFromJson(json, fromJsonT);

  @override
  final T data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$T>.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$T>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseSuccessImplCopyWith<T, _$ApiResponseSuccessImpl<T>>
      get copyWith => __$$ApiResponseSuccessImplCopyWithImpl<T,
          _$ApiResponseSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(int code, String message, String? referenceId)
        clientError,
    required TResult Function(int code, String message, String? referenceId)
        serverError,
    required TResult Function(int code, String message, String? referenceId)
        unknownError,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(int code, String message, String? referenceId)?
        clientError,
    TResult? Function(int code, String message, String? referenceId)?
        serverError,
    TResult? Function(int code, String message, String? referenceId)?
        unknownError,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(int code, String message, String? referenceId)?
        clientError,
    TResult Function(int code, String message, String? referenceId)?
        serverError,
    TResult Function(int code, String message, String? referenceId)?
        unknownError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseSuccessImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseSuccess<T> implements ApiResponse<T> {
  const factory ApiResponseSuccess(final T data) = _$ApiResponseSuccessImpl<T>;

  factory ApiResponseSuccess.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseSuccessImpl<T>.fromJson;

  T get data;
  @JsonKey(ignore: true)
  _$$ApiResponseSuccessImplCopyWith<T, _$ApiResponseSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseClientErrorImplCopyWith<T, $Res> {
  factory _$$ApiResponseClientErrorImplCopyWith(
          _$ApiResponseClientErrorImpl<T> value,
          $Res Function(_$ApiResponseClientErrorImpl<T>) then) =
      __$$ApiResponseClientErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message, String? referenceId});
}

/// @nodoc
class __$$ApiResponseClientErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseClientErrorImpl<T>>
    implements _$$ApiResponseClientErrorImplCopyWith<T, $Res> {
  __$$ApiResponseClientErrorImplCopyWithImpl(
      _$ApiResponseClientErrorImpl<T> _value,
      $Res Function(_$ApiResponseClientErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$ApiResponseClientErrorImpl<T>(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseClientErrorImpl<T>
    with DiagnosticableTreeMixin
    implements ApiResponseClientError<T> {
  const _$ApiResponseClientErrorImpl(this.code, this.message, this.referenceId,
      {final String? $type})
      : $type = $type ?? 'clientError';

  factory _$ApiResponseClientErrorImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseClientErrorImplFromJson(json, fromJsonT);

  @override
  final int code;
  @override
  final String message;
  @override
  final String? referenceId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$T>.clientError(code: $code, message: $message, referenceId: $referenceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$T>.clientError'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('referenceId', referenceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseClientErrorImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseClientErrorImplCopyWith<T, _$ApiResponseClientErrorImpl<T>>
      get copyWith => __$$ApiResponseClientErrorImplCopyWithImpl<T,
          _$ApiResponseClientErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(int code, String message, String? referenceId)
        clientError,
    required TResult Function(int code, String message, String? referenceId)
        serverError,
    required TResult Function(int code, String message, String? referenceId)
        unknownError,
  }) {
    return clientError(code, message, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(int code, String message, String? referenceId)?
        clientError,
    TResult? Function(int code, String message, String? referenceId)?
        serverError,
    TResult? Function(int code, String message, String? referenceId)?
        unknownError,
  }) {
    return clientError?.call(code, message, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(int code, String message, String? referenceId)?
        clientError,
    TResult Function(int code, String message, String? referenceId)?
        serverError,
    TResult Function(int code, String message, String? referenceId)?
        unknownError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(code, message, referenceId);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseClientErrorImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseClientError<T> implements ApiResponse<T> {
  const factory ApiResponseClientError(
          final int code, final String message, final String? referenceId) =
      _$ApiResponseClientErrorImpl<T>;

  factory ApiResponseClientError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseClientErrorImpl<T>.fromJson;

  int get code;
  String get message;
  String? get referenceId;
  @JsonKey(ignore: true)
  _$$ApiResponseClientErrorImplCopyWith<T, _$ApiResponseClientErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseServerErrorImplCopyWith<T, $Res> {
  factory _$$ApiResponseServerErrorImplCopyWith(
          _$ApiResponseServerErrorImpl<T> value,
          $Res Function(_$ApiResponseServerErrorImpl<T>) then) =
      __$$ApiResponseServerErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message, String? referenceId});
}

/// @nodoc
class __$$ApiResponseServerErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseServerErrorImpl<T>>
    implements _$$ApiResponseServerErrorImplCopyWith<T, $Res> {
  __$$ApiResponseServerErrorImplCopyWithImpl(
      _$ApiResponseServerErrorImpl<T> _value,
      $Res Function(_$ApiResponseServerErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$ApiResponseServerErrorImpl<T>(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseServerErrorImpl<T>
    with DiagnosticableTreeMixin
    implements ApiResponseServerError<T> {
  const _$ApiResponseServerErrorImpl(this.code, this.message, this.referenceId,
      {final String? $type})
      : $type = $type ?? 'serverError';

  factory _$ApiResponseServerErrorImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseServerErrorImplFromJson(json, fromJsonT);

  @override
  final int code;
  @override
  final String message;
  @override
  final String? referenceId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$T>.serverError(code: $code, message: $message, referenceId: $referenceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$T>.serverError'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('referenceId', referenceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseServerErrorImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseServerErrorImplCopyWith<T, _$ApiResponseServerErrorImpl<T>>
      get copyWith => __$$ApiResponseServerErrorImplCopyWithImpl<T,
          _$ApiResponseServerErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(int code, String message, String? referenceId)
        clientError,
    required TResult Function(int code, String message, String? referenceId)
        serverError,
    required TResult Function(int code, String message, String? referenceId)
        unknownError,
  }) {
    return serverError(code, message, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(int code, String message, String? referenceId)?
        clientError,
    TResult? Function(int code, String message, String? referenceId)?
        serverError,
    TResult? Function(int code, String message, String? referenceId)?
        unknownError,
  }) {
    return serverError?.call(code, message, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(int code, String message, String? referenceId)?
        clientError,
    TResult Function(int code, String message, String? referenceId)?
        serverError,
    TResult Function(int code, String message, String? referenceId)?
        unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, message, referenceId);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseServerErrorImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseServerError<T> implements ApiResponse<T> {
  const factory ApiResponseServerError(
          final int code, final String message, final String? referenceId) =
      _$ApiResponseServerErrorImpl<T>;

  factory ApiResponseServerError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseServerErrorImpl<T>.fromJson;

  int get code;
  String get message;
  String? get referenceId;
  @JsonKey(ignore: true)
  _$$ApiResponseServerErrorImplCopyWith<T, _$ApiResponseServerErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseErrorImplCopyWith<T, $Res> {
  factory _$$ApiResponseErrorImplCopyWith(_$ApiResponseErrorImpl<T> value,
          $Res Function(_$ApiResponseErrorImpl<T>) then) =
      __$$ApiResponseErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message, String? referenceId});
}

/// @nodoc
class __$$ApiResponseErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseErrorImpl<T>>
    implements _$$ApiResponseErrorImplCopyWith<T, $Res> {
  __$$ApiResponseErrorImplCopyWithImpl(_$ApiResponseErrorImpl<T> _value,
      $Res Function(_$ApiResponseErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$ApiResponseErrorImpl<T>(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseErrorImpl<T>
    with DiagnosticableTreeMixin
    implements ApiResponseError<T> {
  const _$ApiResponseErrorImpl(this.code, this.message, this.referenceId,
      {final String? $type})
      : $type = $type ?? 'unknownError';

  factory _$ApiResponseErrorImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseErrorImplFromJson(json, fromJsonT);

  @override
  final int code;
  @override
  final String message;
  @override
  final String? referenceId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$T>.unknownError(code: $code, message: $message, referenceId: $referenceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$T>.unknownError'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('referenceId', referenceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseErrorImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      __$$ApiResponseErrorImplCopyWithImpl<T, _$ApiResponseErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(int code, String message, String? referenceId)
        clientError,
    required TResult Function(int code, String message, String? referenceId)
        serverError,
    required TResult Function(int code, String message, String? referenceId)
        unknownError,
  }) {
    return unknownError(code, message, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(int code, String message, String? referenceId)?
        clientError,
    TResult? Function(int code, String message, String? referenceId)?
        serverError,
    TResult? Function(int code, String message, String? referenceId)?
        unknownError,
  }) {
    return unknownError?.call(code, message, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(int code, String message, String? referenceId)?
        clientError,
    TResult Function(int code, String message, String? referenceId)?
        serverError,
    TResult Function(int code, String message, String? referenceId)?
        unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(code, message, referenceId);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseErrorImplToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseError<T> implements ApiResponse<T> {
  const factory ApiResponseError(
          final int code, final String message, final String? referenceId) =
      _$ApiResponseErrorImpl<T>;

  factory ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseErrorImpl<T>.fromJson;

  int get code;
  String get message;
  String? get referenceId;
  @JsonKey(ignore: true)
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
