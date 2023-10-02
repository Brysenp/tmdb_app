// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Production _$ProductionFromJson(Map<String, dynamic> json) {
  return _Production.fromJson(json);
}

/// @nodoc
mixin _$Production {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get companyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCopyWith<Production> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCopyWith<$Res> {
  factory $ProductionCopyWith(
          Production value, $Res Function(Production) then) =
      _$ProductionCopyWithImpl<$Res, Production>;
  @useResult
  $Res call({int id, @JsonKey(name: 'name') String? companyName});
}

/// @nodoc
class _$ProductionCopyWithImpl<$Res, $Val extends Production>
    implements $ProductionCopyWith<$Res> {
  _$ProductionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionImplCopyWith<$Res>
    implements $ProductionCopyWith<$Res> {
  factory _$$ProductionImplCopyWith(
          _$ProductionImpl value, $Res Function(_$ProductionImpl) then) =
      __$$ProductionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'name') String? companyName});
}

/// @nodoc
class __$$ProductionImplCopyWithImpl<$Res>
    extends _$ProductionCopyWithImpl<$Res, _$ProductionImpl>
    implements _$$ProductionImplCopyWith<$Res> {
  __$$ProductionImplCopyWithImpl(
      _$ProductionImpl _value, $Res Function(_$ProductionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyName = freezed,
  }) {
    return _then(_$ProductionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionImpl implements _Production {
  _$ProductionImpl({required this.id, @JsonKey(name: 'name') this.companyName});

  factory _$ProductionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? companyName;

  @override
  String toString() {
    return 'Production(id: $id, companyName: $companyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionImplCopyWith<_$ProductionImpl> get copyWith =>
      __$$ProductionImplCopyWithImpl<_$ProductionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionImplToJson(
      this,
    );
  }
}

abstract class _Production implements Production {
  factory _Production(
      {required final int id,
      @JsonKey(name: 'name') final String? companyName}) = _$ProductionImpl;

  factory _Production.fromJson(Map<String, dynamic> json) =
      _$ProductionImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get companyName;
  @override
  @JsonKey(ignore: true)
  _$$ProductionImplCopyWith<_$ProductionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
