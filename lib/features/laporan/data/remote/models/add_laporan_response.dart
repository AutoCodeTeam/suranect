import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_laporan_response.g.dart';

part 'add_laporan_response.freezed.dart';

@freezed
class AddLaporanResponse with _$AddLaporanResponse {
  factory AddLaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$AddLaporanResponseFromJson(json);

  const factory AddLaporanResponse({
    @JsonKey(name: "Message") required String message,
    @JsonKey(name: "Status") required String status
}) = _AddLaporanResponse;
}