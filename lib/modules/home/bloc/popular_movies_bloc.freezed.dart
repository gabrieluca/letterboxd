// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstFetched,
    required TResult Function() nextFetched,
    required TResult Function() refreshed,
    required TResult Function() searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstFetched,
    TResult? Function()? nextFetched,
    TResult? Function()? refreshed,
    TResult? Function()? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstFetched,
    TResult Function()? nextFetched,
    TResult Function()? refreshed,
    TResult Function()? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstFetched value) firstFetched,
    required TResult Function(_NextFetched value) nextFetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_Searched value) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstFetched value)? firstFetched,
    TResult? Function(_NextFetched value)? nextFetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_Searched value)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstFetched value)? firstFetched,
    TResult Function(_NextFetched value)? nextFetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesEventCopyWith<$Res> {
  factory $PopularMoviesEventCopyWith(
          PopularMoviesEvent value, $Res Function(PopularMoviesEvent) then) =
      _$PopularMoviesEventCopyWithImpl<$Res, PopularMoviesEvent>;
}

/// @nodoc
class _$PopularMoviesEventCopyWithImpl<$Res, $Val extends PopularMoviesEvent>
    implements $PopularMoviesEventCopyWith<$Res> {
  _$PopularMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FirstFetchedCopyWith<$Res> {
  factory _$$_FirstFetchedCopyWith(
          _$_FirstFetched value, $Res Function(_$_FirstFetched) then) =
      __$$_FirstFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirstFetchedCopyWithImpl<$Res>
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$_FirstFetched>
    implements _$$_FirstFetchedCopyWith<$Res> {
  __$$_FirstFetchedCopyWithImpl(
      _$_FirstFetched _value, $Res Function(_$_FirstFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FirstFetched implements _FirstFetched {
  const _$_FirstFetched();

  @override
  String toString() {
    return 'PopularMoviesEvent.firstFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FirstFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstFetched,
    required TResult Function() nextFetched,
    required TResult Function() refreshed,
    required TResult Function() searched,
  }) {
    return firstFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstFetched,
    TResult? Function()? nextFetched,
    TResult? Function()? refreshed,
    TResult? Function()? searched,
  }) {
    return firstFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstFetched,
    TResult Function()? nextFetched,
    TResult Function()? refreshed,
    TResult Function()? searched,
    required TResult orElse(),
  }) {
    if (firstFetched != null) {
      return firstFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstFetched value) firstFetched,
    required TResult Function(_NextFetched value) nextFetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_Searched value) searched,
  }) {
    return firstFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstFetched value)? firstFetched,
    TResult? Function(_NextFetched value)? nextFetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_Searched value)? searched,
  }) {
    return firstFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstFetched value)? firstFetched,
    TResult Function(_NextFetched value)? nextFetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (firstFetched != null) {
      return firstFetched(this);
    }
    return orElse();
  }
}

abstract class _FirstFetched implements PopularMoviesEvent {
  const factory _FirstFetched() = _$_FirstFetched;
}

/// @nodoc
abstract class _$$_NextFetchedCopyWith<$Res> {
  factory _$$_NextFetchedCopyWith(
          _$_NextFetched value, $Res Function(_$_NextFetched) then) =
      __$$_NextFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextFetchedCopyWithImpl<$Res>
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$_NextFetched>
    implements _$$_NextFetchedCopyWith<$Res> {
  __$$_NextFetchedCopyWithImpl(
      _$_NextFetched _value, $Res Function(_$_NextFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextFetched implements _NextFetched {
  const _$_NextFetched();

  @override
  String toString() {
    return 'PopularMoviesEvent.nextFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstFetched,
    required TResult Function() nextFetched,
    required TResult Function() refreshed,
    required TResult Function() searched,
  }) {
    return nextFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstFetched,
    TResult? Function()? nextFetched,
    TResult? Function()? refreshed,
    TResult? Function()? searched,
  }) {
    return nextFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstFetched,
    TResult Function()? nextFetched,
    TResult Function()? refreshed,
    TResult Function()? searched,
    required TResult orElse(),
  }) {
    if (nextFetched != null) {
      return nextFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstFetched value) firstFetched,
    required TResult Function(_NextFetched value) nextFetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_Searched value) searched,
  }) {
    return nextFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstFetched value)? firstFetched,
    TResult? Function(_NextFetched value)? nextFetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_Searched value)? searched,
  }) {
    return nextFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstFetched value)? firstFetched,
    TResult Function(_NextFetched value)? nextFetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (nextFetched != null) {
      return nextFetched(this);
    }
    return orElse();
  }
}

abstract class _NextFetched implements PopularMoviesEvent {
  const factory _NextFetched() = _$_NextFetched;
}

/// @nodoc
abstract class _$$_RefreshedCopyWith<$Res> {
  factory _$$_RefreshedCopyWith(
          _$_Refreshed value, $Res Function(_$_Refreshed) then) =
      __$$_RefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshedCopyWithImpl<$Res>
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$_Refreshed>
    implements _$$_RefreshedCopyWith<$Res> {
  __$$_RefreshedCopyWithImpl(
      _$_Refreshed _value, $Res Function(_$_Refreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refreshed implements _Refreshed {
  const _$_Refreshed();

  @override
  String toString() {
    return 'PopularMoviesEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstFetched,
    required TResult Function() nextFetched,
    required TResult Function() refreshed,
    required TResult Function() searched,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstFetched,
    TResult? Function()? nextFetched,
    TResult? Function()? refreshed,
    TResult? Function()? searched,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstFetched,
    TResult Function()? nextFetched,
    TResult Function()? refreshed,
    TResult Function()? searched,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstFetched value) firstFetched,
    required TResult Function(_NextFetched value) nextFetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_Searched value) searched,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstFetched value)? firstFetched,
    TResult? Function(_NextFetched value)? nextFetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_Searched value)? searched,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstFetched value)? firstFetched,
    TResult Function(_NextFetched value)? nextFetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements PopularMoviesEvent {
  const factory _Refreshed() = _$_Refreshed;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res>
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$_Searched>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Searched implements _Searched {
  const _$_Searched();

  @override
  String toString() {
    return 'PopularMoviesEvent.searched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Searched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstFetched,
    required TResult Function() nextFetched,
    required TResult Function() refreshed,
    required TResult Function() searched,
  }) {
    return searched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstFetched,
    TResult? Function()? nextFetched,
    TResult? Function()? refreshed,
    TResult? Function()? searched,
  }) {
    return searched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstFetched,
    TResult Function()? nextFetched,
    TResult Function()? refreshed,
    TResult Function()? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstFetched value) firstFetched,
    required TResult Function(_NextFetched value) nextFetched,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_Searched value) searched,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstFetched value)? firstFetched,
    TResult? Function(_NextFetched value)? nextFetched,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_Searched value)? searched,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstFetched value)? firstFetched,
    TResult Function(_NextFetched value)? nextFetched,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_Searched value)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements PopularMoviesEvent {
  const factory _Searched() = _$_Searched;
}

/// @nodoc
mixin _$PopularMoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PopularMovie> moviesList) success,
    required TResult Function(bool isOffline) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PopularMovie> moviesList)? success,
    TResult? Function(bool isOffline)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PopularMovie> moviesList)? success,
    TResult Function(bool isOffline)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(
          PopularMoviesState value, $Res Function(PopularMoviesState) then) =
      _$PopularMoviesStateCopyWithImpl<$Res, PopularMoviesState>;
}

/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res, $Val extends PopularMoviesState>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'PopularMoviesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PopularMovie> moviesList) success,
    required TResult Function(bool isOffline) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PopularMovie> moviesList)? success,
    TResult? Function(bool isOffline)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PopularMovie> moviesList)? success,
    TResult Function(bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PopularMoviesState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PopularMovie> moviesList});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesList = null,
  }) {
    return _then(_$_Success(
      null == moviesList
          ? _value._moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<PopularMovie>,
    ));
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success(final List<PopularMovie> moviesList)
      : _moviesList = moviesList,
        super._();

  final List<PopularMovie> _moviesList;
  @override
  List<PopularMovie> get moviesList {
    if (_moviesList is EqualUnmodifiableListView) return _moviesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moviesList);
  }

  @override
  String toString() {
    return 'PopularMoviesState.success(moviesList: $moviesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other._moviesList, _moviesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_moviesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PopularMovie> moviesList) success,
    required TResult Function(bool isOffline) error,
  }) {
    return success(moviesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PopularMovie> moviesList)? success,
    TResult? Function(bool isOffline)? error,
  }) {
    return success?.call(moviesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PopularMovie> moviesList)? success,
    TResult Function(bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(moviesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends PopularMoviesState {
  const factory _Success(final List<PopularMovie> moviesList) = _$_Success;
  const _Success._() : super._();

  List<PopularMovie> get moviesList;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOffline});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOffline = null,
  }) {
    return _then(_$_Error(
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({this.isOffline = false}) : super._();

  @override
  @JsonKey()
  final bool isOffline;

  @override
  String toString() {
    return 'PopularMoviesState.error(isOffline: $isOffline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOffline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PopularMovie> moviesList) success,
    required TResult Function(bool isOffline) error,
  }) {
    return error(isOffline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PopularMovie> moviesList)? success,
    TResult? Function(bool isOffline)? error,
  }) {
    return error?.call(isOffline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PopularMovie> moviesList)? success,
    TResult Function(bool isOffline)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isOffline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends PopularMoviesState {
  const factory _Error({final bool isOffline}) = _$_Error;
  const _Error._() : super._();

  bool get isOffline;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
