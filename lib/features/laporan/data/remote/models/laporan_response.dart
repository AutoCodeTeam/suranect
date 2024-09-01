import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/laporan/domain/entities/laporan.dart';

part 'laporan_response.g.dart';

part 'laporan_response.freezed.dart';

@freezed
class LaporanResponse with _$LaporanResponse {
  const factory LaporanResponse({
    @JsonKey(name: "Data") required List<Laporan> data,
    @JsonKey(name: "Message") required String message,
    @JsonKey(name: "Status") required String status,
  }) = _LaporanResponse;

  factory LaporanResponse.fromJson(Map<String, dynamic> json) =>
      _$LaporanResponseFromJson(json);
}
