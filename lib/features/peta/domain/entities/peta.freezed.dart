// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Peta _$PetaFromJson(Map<String, dynamic> json) {
  return _Peta.fromJson(json);
}

/// @nodoc
mixin _$Peta {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "Address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "Detail_location")
  String get detailLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "Time")
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: "Position")
  List<Position> get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetaCopyWith<Peta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetaCopyWith<$Res> {
  factory $PetaCopyWith(Peta value, $Res Function(Peta) then) =
      _$PetaCopyWithImpl<$Res, Peta>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Detail_location") String detailLocation,
      @JsonKey(name: "Time") String time,
      @JsonKey(name: "Position") List<Position> position});
}

/// @nodoc
class _$PetaCopyWithImpl<$Res, $Val extends Peta>
    implements $PetaCopyWith<$Res> {
  _$PetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? address = null,
    Object? detailLocation = null,
    Object? time = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      detailLocation: null == detailLocation
          ? _value.detailLocation
          : detailLocation // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetaImplCopyWith<$Res> implements $PetaCopyWith<$Res> {
  factory _$$PetaImplCopyWith(
          _$PetaImpl value, $Res Function(_$PetaImpl) then) =
      __$$PetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Detail_location") String detailLocation,
      @JsonKey(name: "Time") String time,
      @JsonKey(name: "Position") List<Position> position});
}

/// @nodoc
class __$$PetaImplCopyWithImpl<$Res>
    extends _$PetaCopyWithImpl<$Res, _$PetaImpl>
    implements _$$PetaImplCopyWith<$Res> {
  __$$PetaImplCopyWithImpl(_$PetaImpl _value, $Res Function(_$PetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? address = null,
    Object? detailLocation = null,
    Object? time = null,
    Object? position = null,
  }) {
    return _then(_$PetaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      detailLocation: null == detailLocation
          ? _value.detailLocation
          : detailLocation // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value._position
          : position // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetaImpl implements _Peta {
  const _$PetaImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "Description") required this.description,
      @JsonKey(name: "Address") required this.address,
      @JsonKey(name: "Detail_location") required this.detailLocation,
      @JsonKey(name: "Time") required this.time,
      @JsonKey(name: "Position") required final List<Position> position})
      : _position = position;

  factory _$PetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetaImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "Description")
  final String description;
  @override
  @JsonKey(name: "Address")
  final String address;
  @override
  @JsonKey(name: "Detail_location")
  final String detailLocation;
  @override
  @JsonKey(name: "Time")
  final String time;
  final List<Position> _position;
  @override
  @JsonKey(name: "Position")
  List<Position> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

  @override
  String toString() {
    return 'Peta(id: $id, title: $title, description: $description, address: $address, detailLocation: $detailLocation, time: $time, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.detailLocation, detailLocation) ||
                other.detailLocation == detailLocation) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._position, _position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, address,
      detailLocation, time, const DeepCollectionEquality().hash(_position));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetaImplCopyWith<_$PetaImpl> get copyWith =>
      __$$PetaImplCopyWithImpl<_$PetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetaImplToJson(
      this,
    );
  }
}

abstract class _Peta implements Peta {
  const factory _Peta(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "Description") required final String description,
      @JsonKey(name: "Address") required final String address,
      @JsonKey(name: "Detail_location") required final String detailLocation,
      @JsonKey(name: "Time") required final String time,
      @JsonKey(name: "Position")
      required final List<Position> position}) = _$PetaImpl;

  factory _Peta.fromJson(Map<String, dynamic> json) = _$PetaImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "Description")
  String get description;
  @override
  @JsonKey(name: "Address")
  String get address;
  @override
  @JsonKey(name: "Detail_location")
  String get detailLocation;
  @override
  @JsonKey(name: "Time")
  String get time;
  @override
  @JsonKey(name: "Position")
  List<Position> get position;
  @override
  @JsonKey(ignore: true)
  _$$PetaImplCopyWith<_$PetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  @JsonKey(name: "Lon")
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: "Lat")
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call(
      {@JsonKey(name: "Lon") double lon, @JsonKey(name: "Lat") double lat});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Lon") double lon, @JsonKey(name: "Lat") double lat});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$PositionImpl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionImpl implements _Position {
  const _$PositionImpl(
      {@JsonKey(name: "Lon") required this.lon,
      @JsonKey(name: "Lat") required this.lat});

  factory _$PositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionImplFromJson(json);

  @override
  @JsonKey(name: "Lon")
  final double lon;
  @override
  @JsonKey(name: "Lat")
  final double lat;

  @override
  String toString() {
    return 'Position(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionImplToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position(
      {@JsonKey(name: "Lon") required final double lon,
      @JsonKey(name: "Lat") required final double lat}) = _$PositionImpl;

  factory _Position.fromJson(Map<String, dynamic> json) =
      _$PositionImpl.fromJson;

  @override
  @JsonKey(name: "Lon")
  double get lon;
  @override
  @JsonKey(name: "Lat")
  double get lat;
  @override
  @JsonKey(ignore: true)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
