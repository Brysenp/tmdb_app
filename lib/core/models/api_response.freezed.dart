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
abstract class _$$ApiResponseSuccessCopyWith<T, $Res> {
  factory _$$ApiResponseSuccessCopyWith(_$ApiResponseSuccess<T> value,
          $Res Function(_$ApiResponseSuccess<T>) then) =
      __$$ApiResponseSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiResponseSuccessCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseSuccess<T>>
    implements _$$ApiResponseSuccessCopyWith<T, $Res> {
  __$$ApiResponseSuccessCopyWithImpl(_$ApiResponseSuccess<T> _value,
      $Res Function(_$ApiResponseSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseSuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseSuccess<T>
    with DiagnosticableTreeMixin
    implements ApiResponseSuccess<T> {
  const _$ApiResponseSuccess(this.data, {final String? $type})
      : $type = $type ?? 'data';

  factory _$ApiResponseSuccess.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseSuccessFromJson(json, fromJsonT);

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
            other is _$ApiResponseSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseSuccessCopyWith<T, _$ApiResponseSuccess<T>> get copyWith =>
      __$$ApiResponseSuccessCopyWithImpl<T, _$ApiResponseSuccess<T>>(
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
    return _$$ApiResponseSuccessToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseSuccess<T> implements ApiResponse<T> {
  const factory ApiResponseSuccess(final T data) = _$ApiResponseSuccess<T>;

  factory ApiResponseSuccess.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseSuccess<T>.fromJson;

  T get data;
  @JsonKey(ignore: true)
  _$$ApiResponseSuccessCopyWith<T, _$ApiResponseSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseClientErrorCopyWith<T, $Res> {
  factory _$$ApiResponseClientErrorCopyWith(_$ApiResponseClientError<T> value,
          $Res Function(_$ApiResponseClientError<T>) then) =
      __$$ApiResponseClientErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message, String? referenceId});
}

/// @nodoc
class __$$ApiResponseClientErrorCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseClientError<T>>
    implements _$$ApiResponseClientErrorCopyWith<T, $Res> {
  __$$ApiResponseClientErrorCopyWithImpl(_$ApiResponseClientError<T> _value,
      $Res Function(_$ApiResponseClientError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$ApiResponseClientError<T>(
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
class _$ApiResponseClientError<T>
    with DiagnosticableTreeMixin
    implements ApiResponseClientError<T> {
  const _$ApiResponseClientError(this.code, this.message, this.referenceId,
      {final String? $type})
      : $type = $type ?? 'clientError';

  factory _$ApiResponseClientError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseClientErrorFromJson(json, fromJsonT);

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
            other is _$ApiResponseClientError<T> &&
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
  _$$ApiResponseClientErrorCopyWith<T, _$ApiResponseClientError<T>>
      get copyWith => __$$ApiResponseClientErrorCopyWithImpl<T,
          _$ApiResponseClientError<T>>(this, _$identity);

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
    return _$$ApiResponseClientErrorToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseClientError<T> implements ApiResponse<T> {
  const factory ApiResponseClientError(
          final int code, final String message, final String? referenceId) =
      _$ApiResponseClientError<T>;

  factory ApiResponseClientError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseClientError<T>.fromJson;

  int get code;
  String get message;
  String? get referenceId;
  @JsonKey(ignore: true)
  _$$ApiResponseClientErrorCopyWith<T, _$ApiResponseClientError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseServerErrorCopyWith<T, $Res> {
  factory _$$ApiResponseServerErrorCopyWith(_$ApiResponseServerError<T> value,
          $Res Function(_$ApiResponseServerError<T>) then) =
      __$$ApiResponseServerErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message, String? referenceId});
}

/// @nodoc
class __$$ApiResponseServerErrorCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseServerError<T>>
    implements _$$ApiResponseServerErrorCopyWith<T, $Res> {
  __$$ApiResponseServerErrorCopyWithImpl(_$ApiResponseServerError<T> _value,
      $Res Function(_$ApiResponseServerError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$ApiResponseServerError<T>(
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
class _$ApiResponseServerError<T>
    with DiagnosticableTreeMixin
    implements ApiResponseServerError<T> {
  const _$ApiResponseServerError(this.code, this.message, this.referenceId,
      {final String? $type})
      : $type = $type ?? 'serverError';

  factory _$ApiResponseServerError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseServerErrorFromJson(json, fromJsonT);

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
            other is _$ApiResponseServerError<T> &&
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
  _$$ApiResponseServerErrorCopyWith<T, _$ApiResponseServerError<T>>
      get copyWith => __$$ApiResponseServerErrorCopyWithImpl<T,
          _$ApiResponseServerError<T>>(this, _$identity);

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
    return _$$ApiResponseServerErrorToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseServerError<T> implements ApiResponse<T> {
  const factory ApiResponseServerError(
          final int code, final String message, final String? referenceId) =
      _$ApiResponseServerError<T>;

  factory ApiResponseServerError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseServerError<T>.fromJson;

  int get code;
  String get message;
  String? get referenceId;
  @JsonKey(ignore: true)
  _$$ApiResponseServerErrorCopyWith<T, _$ApiResponseServerError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseErrorCopyWith<T, $Res> {
  factory _$$ApiResponseErrorCopyWith(_$ApiResponseError<T> value,
          $Res Function(_$ApiResponseError<T>) then) =
      __$$ApiResponseErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code, String message, String? referenceId});
}

/// @nodoc
class __$$ApiResponseErrorCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseError<T>>
    implements _$$ApiResponseErrorCopyWith<T, $Res> {
  __$$ApiResponseErrorCopyWithImpl(
      _$ApiResponseError<T> _value, $Res Function(_$ApiResponseError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$ApiResponseError<T>(
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
class _$ApiResponseError<T>
    with DiagnosticableTreeMixin
    implements ApiResponseError<T> {
  const _$ApiResponseError(this.code, this.message, this.referenceId,
      {final String? $type})
      : $type = $type ?? 'unknownError';

  factory _$ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseErrorFromJson(json, fromJsonT);

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
            other is _$ApiResponseError<T> &&
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
  _$$ApiResponseErrorCopyWith<T, _$ApiResponseError<T>> get copyWith =>
      __$$ApiResponseErrorCopyWithImpl<T, _$ApiResponseError<T>>(
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
    return _$$ApiResponseErrorToJson<T>(this, toJsonT);
  }
}

abstract class ApiResponseError<T> implements ApiResponse<T> {
  const factory ApiResponseError(
          final int code, final String message, final String? referenceId) =
      _$ApiResponseError<T>;

  factory ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseError<T>.fromJson;

  int get code;
  String get message;
  String? get referenceId;
  @JsonKey(ignore: true)
  _$$ApiResponseErrorCopyWith<T, _$ApiResponseError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
