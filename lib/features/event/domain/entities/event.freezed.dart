// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "Openness")
  String get openness => throw _privateConstructorUsedError;
  @JsonKey(name: "Building")
  String get building => throw _privateConstructorUsedError;
  @JsonKey(name: "Address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "Date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "Time")
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: "Poster")
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: "Link_registrasion")
  String get linkRegistrasion => throw _privateConstructorUsedError;
  @JsonKey(name: "Position")
  Position get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Title") String title,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Openness") String openness,
      @JsonKey(name: "Building") String building,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Date") String date,
      @JsonKey(name: "Time") String time,
      @JsonKey(name: "Poster") String poster,
      @JsonKey(name: "Link_registrasion") String linkRegistrasion,
      @JsonKey(name: "Position") Position position});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

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
    Object? openness = null,
    Object? building = null,
    Object? address = null,
    Object? date = null,
    Object? time = null,
    Object? poster = null,
    Object? linkRegistrasion = null,
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
      openness: null == openness
          ? _value.openness
          : openness // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      linkRegistrasion: null == linkRegistrasion
          ? _value.linkRegistrasion
          : linkRegistrasion // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Title") String title,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Openness") String openness,
      @JsonKey(name: "Building") String building,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Date") String date,
      @JsonKey(name: "Time") String time,
      @JsonKey(name: "Poster") String poster,
      @JsonKey(name: "Link_registrasion") String linkRegistrasion,
      @JsonKey(name: "Position") Position position});

  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? openness = null,
    Object? building = null,
    Object? address = null,
    Object? date = null,
    Object? time = null,
    Object? poster = null,
    Object? linkRegistrasion = null,
    Object? position = null,
  }) {
    return _then(_$EventImpl(
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
      openness: null == openness
          ? _value.openness
          : openness // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      linkRegistrasion: null == linkRegistrasion
          ? _value.linkRegistrasion
          : linkRegistrasion // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Title") required this.title,
      @JsonKey(name: "Description") required this.description,
      @JsonKey(name: "Openness") required this.openness,
      @JsonKey(name: "Building") required this.building,
      @JsonKey(name: "Address") required this.address,
      @JsonKey(name: "Date") required this.date,
      @JsonKey(name: "Time") required this.time,
      @JsonKey(name: "Poster") required this.poster,
      @JsonKey(name: "Link_registrasion") required this.linkRegistrasion,
      @JsonKey(name: "Position") required this.position});

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Title")
  final String title;
  @override
  @JsonKey(name: "Description")
  final String description;
  @override
  @JsonKey(name: "Openness")
  final String openness;
  @override
  @JsonKey(name: "Building")
  final String building;
  @override
  @JsonKey(name: "Address")
  final String address;
  @override
  @JsonKey(name: "Date")
  final String date;
  @override
  @JsonKey(name: "Time")
  final String time;
  @override
  @JsonKey(name: "Poster")
  final String poster;
  @override
  @JsonKey(name: "Link_registrasion")
  final String linkRegistrasion;
  @override
  @JsonKey(name: "Position")
  final Position position;

  @override
  String toString() {
    return 'Event(id: $id, title: $title, description: $description, openness: $openness, building: $building, address: $address, date: $date, time: $time, poster: $poster, linkRegistrasion: $linkRegistrasion, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.openness, openness) ||
                other.openness == openness) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.linkRegistrasion, linkRegistrasion) ||
                other.linkRegistrasion == linkRegistrasion) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, openness,
      building, address, date, time, poster, linkRegistrasion, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
          {@JsonKey(name: "ID") required final int id,
          @JsonKey(name: "Title") required final String title,
          @JsonKey(name: "Description") required final String description,
          @JsonKey(name: "Openness") required final String openness,
          @JsonKey(name: "Building") required final String building,
          @JsonKey(name: "Address") required final String address,
          @JsonKey(name: "Date") required final String date,
          @JsonKey(name: "Time") required final String time,
          @JsonKey(name: "Poster") required final String poster,
          @JsonKey(name: "Link_registrasion")
          required final String linkRegistrasion,
          @JsonKey(name: "Position") required final Position position}) =
      _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Title")
  String get title;
  @override
  @JsonKey(name: "Description")
  String get description;
  @override
  @JsonKey(name: "Openness")
  String get openness;
  @override
  @JsonKey(name: "Building")
  String get building;
  @override
  @JsonKey(name: "Address")
  String get address;
  @override
  @JsonKey(name: "Date")
  String get date;
  @override
  @JsonKey(name: "Time")
  String get time;
  @override
  @JsonKey(name: "Poster")
  String get poster;
  @override
  @JsonKey(name: "Link_registrasion")
  String get linkRegistrasion;
  @override
  @JsonKey(name: "Position")
  Position get position;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
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
