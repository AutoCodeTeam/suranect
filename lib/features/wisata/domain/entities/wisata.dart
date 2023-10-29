import 'package:freezed_annotation/freezed_annotation.dart';

part 'wisata.freezed.dart';

part 'wisata.g.dart';


@freezed
class Wisata with _$Wisata {
const factory Wisata({
  @JsonKey(name: "ID") required int id,
  @JsonKey(name: "Name") required String name,
  @JsonKey(name: "Description") required String description,
  @JsonKey(name: "Address") required String address,
  @JsonKey(name: "Image") required String image,
  @JsonKey(name: "Rating") required double rating,
}) = _Wisata;

  factory Wisata.fromJson(Map<String, dynamic> json) => _$WisataFromJson(json);
}