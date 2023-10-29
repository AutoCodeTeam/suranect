import 'package:freezed_annotation/freezed_annotation.dart';

part 'peta.freezed.dart';

part 'peta.g.dart';

@freezed
class Peta with _$Peta {
  const factory Peta({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "Description") required String description,
    @JsonKey(name: "Address") required String address,
    @JsonKey(name: "Detail_location") required String detailLocation,
    @JsonKey(name: "Time") required String time,
    @JsonKey(name: "Position") required List<Position> position,
  }) = _Peta;

  factory Peta.fromJson(Map<String, dynamic> json) => _$PetaFromJson(json);
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
