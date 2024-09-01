import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

part 'event.g.dart';

@freezed
class Event with _$Event {

  const factory Event({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "Title") required String title,
    @JsonKey(name: "Description") required String description,
    @JsonKey(name: "Openness") required String openness,
    @JsonKey(name: "Building") required String building,
    @JsonKey(name: "Address") required String address,
    @JsonKey(name: "Date") required String date,
    @JsonKey(name: "Time") required String time,
    @JsonKey(name: "Poster") required String poster,
    @JsonKey(name: "Link_registrasion") required String linkRegistrasion,
    @JsonKey(name: "Position") required Position position,


  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class Position with _$Position {
  const factory Position({
    @JsonKey(name: "Lon") required double lon,
    @JsonKey(name: "Lat") required double lat,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}