import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/pajak_kendaraan/domain/entities/pajak_kendaraan.dart';

part 'pajak_kendaraan_response.g.dart';

part 'pajak_kendaraan_response.freezed.dart';

@freezed
class PajakKendaraanResponse with _$PajakKendaraanResponse {
  const factory PajakKendaraanResponse({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'Data') required List<PajakKendaraan> data,
}) = _PajakKendaraanResponse;

  factory PajakKendaraanResponse.fromJson(Map<String, dynamic> json) =>
      _$PajakKendaraanResponseFromJson(json);
}
