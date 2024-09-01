import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/laporan/domain/entities/laporan.dart';

part 'laporan_detail_response.freezed.dart';

part 'laporan_detail_response.g.dart';

@freezed
class LaporanDetailResponse with _$LaporanDetailResponse {
  const factory LaporanDetailResponse({
    @JsonKey(name: "Data") required Laporan data,
    // @JsonKey(name: "Message") required String message,
    // @JsonKey(name: "Status") required String status,
  }) = _LaporanDetailResponse;

  factory LaporanDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$LaporanDetailResponseFromJson(json);
}
