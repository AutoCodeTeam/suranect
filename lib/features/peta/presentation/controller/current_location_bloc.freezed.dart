// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trackLocation,
    required TResult Function(Position position) directToMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trackLocation,
    TResult? Function(Position position)? directToMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trackLocation,
    TResult Function(Position position)? directToMyLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrackLocation value) trackLocation,
    required TResult Function(_DirectToMyLocation value) directToMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrackLocation value)? trackLocation,
    TResult? Function(_DirectToMyLocation value)? directToMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrackLocation value)? trackLocation,
    TResult Function(_DirectToMyLocation value)? directToMyLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentLocationEventCopyWith<$Res> {
  factory $CurrentLocationEventCopyWith(CurrentLocationEvent value,
          $Res Function(CurrentLocationEvent) then) =
      _$CurrentLocationEventCopyWithImpl<$Res, CurrentLocationEvent>;
}

/// @nodoc
class _$CurrentLocationEventCopyWithImpl<$Res,
        $Val extends CurrentLocationEvent>
    implements $CurrentLocationEventCopyWith<$Res> {
  _$CurrentLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CurrentLocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CurrentLocationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trackLocation,
    required TResult Function(Position position) directToMyLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trackLocation,
    TResult? Function(Position position)? directToMyLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trackLocation,
    TResult Function(Position position)? directToMyLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrackLocation value) trackLocation,
    required TResult Function(_DirectToMyLocation value) directToMyLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrackLocation value)? trackLocation,
    TResult? Function(_DirectToMyLocation value)? directToMyLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrackLocation value)? trackLocation,
    TResult Function(_DirectToMyLocation value)? directToMyLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CurrentLocationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TrackLocationImplCopyWith<$Res> {
  factory _$$TrackLocationImplCopyWith(
          _$TrackLocationImpl value, $Res Function(_$TrackLocationImpl) then) =
      __$$TrackLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackLocationImplCopyWithImpl<$Res>
    extends _$CurrentLocationEventCopyWithImpl<$Res, _$TrackLocationImpl>
    implements _$$TrackLocationImplCopyWith<$Res> {
  __$$TrackLocationImplCopyWithImpl(
      _$TrackLocationImpl _value, $Res Function(_$TrackLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrackLocationImpl implements _TrackLocation {
  const _$TrackLocationImpl();

  @override
  String toString() {
    return 'CurrentLocationEvent.trackLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrackLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trackLocation,
    required TResult Function(Position position) directToMyLocation,
  }) {
    return trackLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trackLocation,
    TResult? Function(Position position)? directToMyLocation,
  }) {
    return trackLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trackLocation,
    TResult Function(Position position)? directToMyLocation,
    required TResult orElse(),
  }) {
    if (trackLocation != null) {
      return trackLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrackLocation value) trackLocation,
    required TResult Function(_DirectToMyLocation value) directToMyLocation,
  }) {
    return trackLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrackLocation value)? trackLocation,
    TResult? Function(_DirectToMyLocation value)? directToMyLocation,
  }) {
    return trackLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrackLocation value)? trackLocation,
    TResult Function(_DirectToMyLocation value)? directToMyLocation,
    required TResult orElse(),
  }) {
    if (trackLocation != null) {
      return trackLocation(this);
    }
    return orElse();
  }
}

abstract class _TrackLocation implements CurrentLocationEvent {
  const factory _TrackLocation() = _$TrackLocationImpl;
}

/// @nodoc
abstract class _$$DirectToMyLocationImplCopyWith<$Res> {
  factory _$$DirectToMyLocationImplCopyWith(_$DirectToMyLocationImpl value,
          $Res Function(_$DirectToMyLocationImpl) then) =
      __$$DirectToMyLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$DirectToMyLocationImplCopyWithImpl<$Res>
    extends _$CurrentLocationEventCopyWithImpl<$Res, _$DirectToMyLocationImpl>
    implements _$$DirectToMyLocationImplCopyWith<$Res> {
  __$$DirectToMyLocationImplCopyWithImpl(_$DirectToMyLocationImpl _value,
      $Res Function(_$DirectToMyLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$DirectToMyLocationImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$DirectToMyLocationImpl implements _DirectToMyLocation {
  const _$DirectToMyLocationImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'CurrentLocationEvent.directToMyLocation(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectToMyLocationImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectToMyLocationImplCopyWith<_$DirectToMyLocationImpl> get copyWith =>
      __$$DirectToMyLocationImplCopyWithImpl<_$DirectToMyLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trackLocation,
    required TResult Function(Position position) directToMyLocation,
  }) {
    return directToMyLocation(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trackLocation,
    TResult? Function(Position position)? directToMyLocation,
  }) {
    return directToMyLocation?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trackLocation,
    TResult Function(Position position)? directToMyLocation,
    required TResult orElse(),
  }) {
    if (directToMyLocation != null) {
      return directToMyLocation(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrackLocation value) trackLocation,
    required TResult Function(_DirectToMyLocation value) directToMyLocation,
  }) {
    return directToMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrackLocation value)? trackLocation,
    TResult? Function(_DirectToMyLocation value)? directToMyLocation,
  }) {
    return directToMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrackLocation value)? trackLocation,
    TResult Function(_DirectToMyLocation value)? directToMyLocation,
    required TResult orElse(),
  }) {
    if (directToMyLocation != null) {
      return directToMyLocation(this);
    }
    return orElse();
  }
}

abstract class _DirectToMyLocation implements CurrentLocationEvent {
  const factory _DirectToMyLocation(final Position position) =
      _$DirectToMyLocationImpl;

  Position get position;
  @JsonKey(ignore: true)
  _$$DirectToMyLocationImplCopyWith<_$DirectToMyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng latLng) currentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LatLng latLng)? currentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng latLng)? currentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CurrentLocation value)? currentLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentLocationStateCopyWith<$Res> {
  factory $CurrentLocationStateCopyWith(CurrentLocationState value,
          $Res Function(CurrentLocationState) then) =
      _$CurrentLocationStateCopyWithImpl<$Res, CurrentLocationState>;
}

/// @nodoc
class _$CurrentLocationStateCopyWithImpl<$Res,
        $Val extends CurrentLocationState>
    implements $CurrentLocationStateCopyWith<$Res> {
  _$CurrentLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CurrentLocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CurrentLocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng latLng) currentLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LatLng latLng)? currentLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng latLng)? currentLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CurrentLocation value)? currentLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CurrentLocationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CurrentLocationImplCopyWith<$Res> {
  factory _$$CurrentLocationImplCopyWith(_$CurrentLocationImpl value,
          $Res Function(_$CurrentLocationImpl) then) =
      __$$CurrentLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$CurrentLocationImplCopyWithImpl<$Res>
    extends _$CurrentLocationStateCopyWithImpl<$Res, _$CurrentLocationImpl>
    implements _$$CurrentLocationImplCopyWith<$Res> {
  __$$CurrentLocationImplCopyWithImpl(
      _$CurrentLocationImpl _value, $Res Function(_$CurrentLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$CurrentLocationImpl(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$CurrentLocationImpl implements _CurrentLocation {
  const _$CurrentLocationImpl(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'CurrentLocationState.currentLocation(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentLocationImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentLocationImplCopyWith<_$CurrentLocationImpl> get copyWith =>
      __$$CurrentLocationImplCopyWithImpl<_$CurrentLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LatLng latLng) currentLocation,
  }) {
    return currentLocation(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LatLng latLng)? currentLocation,
  }) {
    return currentLocation?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LatLng latLng)? currentLocation,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
  }) {
    return currentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CurrentLocation value)? currentLocation,
  }) {
    return currentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocation implements CurrentLocationState {
  const factory _CurrentLocation(final LatLng latLng) = _$CurrentLocationImpl;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$CurrentLocationImplCopyWith<_$CurrentLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
