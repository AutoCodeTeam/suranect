import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/wisata/domain/entities/wisata.dart';

part 'wisata_response.g.dart';

part 'wisata_response.freezed.dart';

@freezed
class WisataResponse with _$WisataResponse {
const factory WisataResponse({
  @JsonKey(name: "Message") required String message,
  @JsonKey(name: "Status") required String status,
  @JsonKey(name: "Data") required List<Wisata> data,
}) = _WisataResponse;

  factory WisataResponse.fromJson(Map<String, dynamic> json) =>
      _$WisataResponseFromJson(json);
}