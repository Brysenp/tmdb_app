// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(String message, int? code) error,
    required TResult Function(List<T> items) onSubsequentLoad,
    required TResult Function(List<T> loadedItems, String message, int? code)
        onSubsequentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? data,
    TResult? Function()? loading,
    TResult? Function(String message, int? code)? error,
    TResult? Function(List<T> items)? onSubsequentLoad,
    TResult? Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(String message, int? code)? error,
    TResult Function(List<T> items)? onSubsequentLoad,
    TResult Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<T, $Res> {
  factory $PageStateCopyWith(
          PageState<T> value, $Res Function(PageState<T>) then) =
      _$PageStateCopyWithImpl<T, $Res, PageState<T>>;
}

/// @nodoc
class _$PageStateCopyWithImpl<T, $Res, $Val extends PageState<T>>
    implements $PageStateCopyWith<T, $Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataImplCopyWith<T, $Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl<T> value, $Res Function(_$DataImpl<T>) then) =
      __$$DataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$DataImplCopyWithImpl<T, $Res>
    extends _$PageStateCopyWithImpl<T, $Res, _$DataImpl<T>>
    implements _$$DataImplCopyWith<T, $Res> {
  __$$DataImplCopyWithImpl(
      _$DataImpl<T> _value, $Res Function(_$DataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$DataImpl<T>(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$DataImpl<T> with DiagnosticableTreeMixin implements Data<T> {
  const _$DataImpl(final List<T> items) : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageState<$T>.data(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageState<$T>.data'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      __$$DataImplCopyWithImpl<T, _$DataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(String message, int? code) error,
    required TResult Function(List<T> items) onSubsequentLoad,
    required TResult Function(List<T> loadedItems, String message, int? code)
        onSubsequentError,
  }) {
    return data(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? data,
    TResult? Function()? loading,
    TResult? Function(String message, int? code)? error,
    TResult? Function(List<T> items)? onSubsequentLoad,
    TResult? Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
  }) {
    return data?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(String message, int? code)? error,
    TResult Function(List<T> items)? onSubsequentLoad,
    TResult Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(items);
    }
    return orElse();
  }
}

abstract class Data<T> implements PageState<T> {
  const factory Data(final List<T> items) = _$DataImpl<T>;

  List<T> get items;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$PageStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> with DiagnosticableTreeMixin implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PageState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(String message, int? code) error,
    required TResult Function(List<T> items) onSubsequentLoad,
    required TResult Function(List<T> loadedItems, String message, int? code)
        onSubsequentError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? data,
    TResult? Function()? loading,
    TResult? Function(String message, int? code)? error,
    TResult? Function(List<T> items)? onSubsequentLoad,
    TResult? Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(String message, int? code)? error,
    TResult Function(List<T> items)? onSubsequentLoad,
    TResult Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }
}

abstract class Loading<T> implements PageState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message, int? code});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$PageStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$ErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> with DiagnosticableTreeMixin implements Error<T> {
  const _$ErrorImpl(this.message, this.code);

  @override
  final String message;
  @override
  final int? code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageState<$T>.error(message: $message, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageState<$T>.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(String message, int? code) error,
    required TResult Function(List<T> items) onSubsequentLoad,
    required TResult Function(List<T> loadedItems, String message, int? code)
        onSubsequentError,
  }) {
    return error(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? data,
    TResult? Function()? loading,
    TResult? Function(String message, int? code)? error,
    TResult? Function(List<T> items)? onSubsequentLoad,
    TResult? Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
  }) {
    return error?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(String message, int? code)? error,
    TResult Function(List<T> items)? onSubsequentLoad,
    TResult Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, code);
    }
    return orElse();
  }
}

abstract class Error<T> implements PageState<T> {
  const factory Error(final String message, final int? code) = _$ErrorImpl<T>;

  String get message;
  int? get code;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSubsequentLoadImplCopyWith<T, $Res> {
  factory _$$OnSubsequentLoadImplCopyWith(_$OnSubsequentLoadImpl<T> value,
          $Res Function(_$OnSubsequentLoadImpl<T>) then) =
      __$$OnSubsequentLoadImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$OnSubsequentLoadImplCopyWithImpl<T, $Res>
    extends _$PageStateCopyWithImpl<T, $Res, _$OnSubsequentLoadImpl<T>>
    implements _$$OnSubsequentLoadImplCopyWith<T, $Res> {
  __$$OnSubsequentLoadImplCopyWithImpl(_$OnSubsequentLoadImpl<T> _value,
      $Res Function(_$OnSubsequentLoadImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$OnSubsequentLoadImpl<T>(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$OnSubsequentLoadImpl<T>
    with DiagnosticableTreeMixin
    implements OnSubsequentLoad<T> {
  const _$OnSubsequentLoadImpl(final List<T> items) : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageState<$T>.onSubsequentLoad(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageState<$T>.onSubsequentLoad'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSubsequentLoadImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSubsequentLoadImplCopyWith<T, _$OnSubsequentLoadImpl<T>> get copyWith =>
      __$$OnSubsequentLoadImplCopyWithImpl<T, _$OnSubsequentLoadImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(String message, int? code) error,
    required TResult Function(List<T> items) onSubsequentLoad,
    required TResult Function(List<T> loadedItems, String message, int? code)
        onSubsequentError,
  }) {
    return onSubsequentLoad(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? data,
    TResult? Function()? loading,
    TResult? Function(String message, int? code)? error,
    TResult? Function(List<T> items)? onSubsequentLoad,
    TResult? Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
  }) {
    return onSubsequentLoad?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(String message, int? code)? error,
    TResult Function(List<T> items)? onSubsequentLoad,
    TResult Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
    required TResult orElse(),
  }) {
    if (onSubsequentLoad != null) {
      return onSubsequentLoad(items);
    }
    return orElse();
  }
}

abstract class OnSubsequentLoad<T> implements PageState<T> {
  const factory OnSubsequentLoad(final List<T> items) =
      _$OnSubsequentLoadImpl<T>;

  List<T> get items;
  @JsonKey(ignore: true)
  _$$OnSubsequentLoadImplCopyWith<T, _$OnSubsequentLoadImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSubsequentErrorImplCopyWith<T, $Res> {
  factory _$$OnSubsequentErrorImplCopyWith(_$OnSubsequentErrorImpl<T> value,
          $Res Function(_$OnSubsequentErrorImpl<T>) then) =
      __$$OnSubsequentErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> loadedItems, String message, int? code});
}

/// @nodoc
class __$$OnSubsequentErrorImplCopyWithImpl<T, $Res>
    extends _$PageStateCopyWithImpl<T, $Res, _$OnSubsequentErrorImpl<T>>
    implements _$$OnSubsequentErrorImplCopyWith<T, $Res> {
  __$$OnSubsequentErrorImplCopyWithImpl(_$OnSubsequentErrorImpl<T> _value,
      $Res Function(_$OnSubsequentErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedItems = null,
    Object? message = null,
    Object? code = freezed,
  }) {
    return _then(_$OnSubsequentErrorImpl<T>(
      null == loadedItems
          ? _value._loadedItems
          : loadedItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnSubsequentErrorImpl<T>
    with DiagnosticableTreeMixin
    implements OnSubsequentError<T> {
  const _$OnSubsequentErrorImpl(
      final List<T> loadedItems, this.message, this.code)
      : _loadedItems = loadedItems;

  final List<T> _loadedItems;
  @override
  List<T> get loadedItems {
    if (_loadedItems is EqualUnmodifiableListView) return _loadedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedItems);
  }

  @override
  final String message;
  @override
  final int? code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageState<$T>.onSubsequentError(loadedItems: $loadedItems, message: $message, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageState<$T>.onSubsequentError'))
      ..add(DiagnosticsProperty('loadedItems', loadedItems))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSubsequentErrorImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._loadedItems, _loadedItems) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_loadedItems), message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSubsequentErrorImplCopyWith<T, _$OnSubsequentErrorImpl<T>>
      get copyWith =>
          __$$OnSubsequentErrorImplCopyWithImpl<T, _$OnSubsequentErrorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(String message, int? code) error,
    required TResult Function(List<T> items) onSubsequentLoad,
    required TResult Function(List<T> loadedItems, String message, int? code)
        onSubsequentError,
  }) {
    return onSubsequentError(loadedItems, message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? data,
    TResult? Function()? loading,
    TResult? Function(String message, int? code)? error,
    TResult? Function(List<T> items)? onSubsequentLoad,
    TResult? Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
  }) {
    return onSubsequentError?.call(loadedItems, message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(String message, int? code)? error,
    TResult Function(List<T> items)? onSubsequentLoad,
    TResult Function(List<T> loadedItems, String message, int? code)?
        onSubsequentError,
    required TResult orElse(),
  }) {
    if (onSubsequentError != null) {
      return onSubsequentError(loadedItems, message, code);
    }
    return orElse();
  }
}

abstract class OnSubsequentError<T> implements PageState<T> {
  const factory OnSubsequentError(
          final List<T> loadedItems, final String message, final int? code) =
      _$OnSubsequentErrorImpl<T>;

  List<T> get loadedItems;
  String get message;
  int? get code;
  @JsonKey(ignore: true)
  _$$OnSubsequentErrorImplCopyWith<T, _$OnSubsequentErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
