// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int id,
      bool adult,
      String title,
      @JsonKey(name: 'poster_path') String? imageUrl,
      @JsonKey(name: 'release_date') DateTime? releaseDate,
      String overview});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? releaseDate = freezed,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool adult,
      String title,
      @JsonKey(name: 'poster_path') String? imageUrl,
      @JsonKey(name: 'release_date') DateTime? releaseDate,
      String overview});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? releaseDate = freezed,
    Object? overview = null,
  }) {
    return _then(_$_Movie(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie with DiagnosticableTreeMixin implements _Movie {
  _$_Movie(
      {required this.id,
      required this.adult,
      required this.title,
      @JsonKey(name: 'poster_path') this.imageUrl,
      @JsonKey(name: 'release_date') this.releaseDate,
      required this.overview});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int id;
  @override
  final bool adult;
  @override
  final String title;
  @override
  @JsonKey(name: 'poster_path')
  final String? imageUrl;
  @override
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @override
  final String overview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Movie(id: $id, adult: $adult, title: $title, imageUrl: $imageUrl, releaseDate: $releaseDate, overview: $overview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Movie'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('adult', adult))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('releaseDate', releaseDate))
      ..add(DiagnosticsProperty('overview', overview));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, adult, title, imageUrl, releaseDate, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
      {required final int id,
      required final bool adult,
      required final String title,
      @JsonKey(name: 'poster_path') final String? imageUrl,
      @JsonKey(name: 'release_date') final DateTime? releaseDate,
      required final String overview}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;
  @override
  bool get adult;
  @override
  String get title;
  @override
  @JsonKey(name: 'poster_path')
  String? get imageUrl;
  @override
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}

NowPlaying _$NowPlayingFromJson(Map<String, dynamic> json) {
  return _NowPlaying.fromJson(json);
}

/// @nodoc
mixin _$NowPlaying {
  int get page => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res, NowPlaying>;
  @useResult
  $Res call({int page, List<Movie> results});
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res, $Val extends NowPlaying>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

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
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NowPlayingCopyWith<$Res>
    implements $NowPlayingCopyWith<$Res> {
  factory _$$_NowPlayingCopyWith(
          _$_NowPlaying value, $Res Function(_$_NowPlaying) then) =
      __$$_NowPlayingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<Movie> results});
}

/// @nodoc
class __$$_NowPlayingCopyWithImpl<$Res>
    extends _$NowPlayingCopyWithImpl<$Res, _$_NowPlaying>
    implements _$$_NowPlayingCopyWith<$Res> {
  __$$_NowPlayingCopyWithImpl(
      _$_NowPlaying _value, $Res Function(_$_NowPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$_NowPlaying(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NowPlaying with DiagnosticableTreeMixin implements _NowPlaying {
  _$_NowPlaying({required this.page, required final List<Movie> results})
      : _results = results;

  factory _$_NowPlaying.fromJson(Map<String, dynamic> json) =>
      _$$_NowPlayingFromJson(json);

  @override
  final int page;
  final List<Movie> _results;
  @override
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NowPlaying(page: $page, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NowPlaying'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NowPlaying &&
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
  _$$_NowPlayingCopyWith<_$_NowPlaying> get copyWith =>
      __$$_NowPlayingCopyWithImpl<_$_NowPlaying>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NowPlayingToJson(
      this,
    );
  }
}

abstract class _NowPlaying implements NowPlaying {
  factory _NowPlaying(
      {required final int page,
      required final List<Movie> results}) = _$_NowPlaying;

  factory _NowPlaying.fromJson(Map<String, dynamic> json) =
      _$_NowPlaying.fromJson;

  @override
  int get page;
  @override
  List<Movie> get results;
  @override
  @JsonKey(ignore: true)
  _$$_NowPlayingCopyWith<_$_NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

TopRated _$TopRatedFromJson(Map<String, dynamic> json) {
  return _TopRated.fromJson(json);
}

/// @nodoc
mixin _$TopRated {
  int get page => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopRatedCopyWith<TopRated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedCopyWith<$Res> {
  factory $TopRatedCopyWith(TopRated value, $Res Function(TopRated) then) =
      _$TopRatedCopyWithImpl<$Res, TopRated>;
  @useResult
  $Res call({int page, List<Movie> results});
}

/// @nodoc
class _$TopRatedCopyWithImpl<$Res, $Val extends TopRated>
    implements $TopRatedCopyWith<$Res> {
  _$TopRatedCopyWithImpl(this._value, this._then);

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
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopRatedCopyWith<$Res> implements $TopRatedCopyWith<$Res> {
  factory _$$_TopRatedCopyWith(
          _$_TopRated value, $Res Function(_$_TopRated) then) =
      __$$_TopRatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<Movie> results});
}

/// @nodoc
class __$$_TopRatedCopyWithImpl<$Res>
    extends _$TopRatedCopyWithImpl<$Res, _$_TopRated>
    implements _$$_TopRatedCopyWith<$Res> {
  __$$_TopRatedCopyWithImpl(
      _$_TopRated _value, $Res Function(_$_TopRated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$_TopRated(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopRated with DiagnosticableTreeMixin implements _TopRated {
  _$_TopRated({required this.page, required final List<Movie> results})
      : _results = results;

  factory _$_TopRated.fromJson(Map<String, dynamic> json) =>
      _$$_TopRatedFromJson(json);

  @override
  final int page;
  final List<Movie> _results;
  @override
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopRated(page: $page, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopRated'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopRated &&
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
  _$$_TopRatedCopyWith<_$_TopRated> get copyWith =>
      __$$_TopRatedCopyWithImpl<_$_TopRated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopRatedToJson(
      this,
    );
  }
}

abstract class _TopRated implements TopRated {
  factory _TopRated(
      {required final int page,
      required final List<Movie> results}) = _$_TopRated;

  factory _TopRated.fromJson(Map<String, dynamic> json) = _$_TopRated.fromJson;

  @override
  int get page;
  @override
  List<Movie> get results;
  @override
  @JsonKey(ignore: true)
  _$$_TopRatedCopyWith<_$_TopRated> get copyWith =>
      throw _privateConstructorUsedError;
}
