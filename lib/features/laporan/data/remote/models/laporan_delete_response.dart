import 'package:freezed_annotation/freezed_annotation.dart';

part 'laporan_delete_response.freezed.dart';

part 'laporan_delete_response.g.dart';

@freezed
class LaporanDeleteResponse with _$LaporanDeleteResponse {
  const factory LaporanDeleteResponse({
    @JsonKey(name: "Message") required String message,
    @JsonKey(name: "Status") required String status,
  }) = _LaporanDeleteResponse;

  factory LaporanDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$LaporanDeleteResponseFromJson(json);
}
