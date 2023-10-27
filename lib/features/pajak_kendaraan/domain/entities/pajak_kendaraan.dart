import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/pajak_kendaraan/domain/entities/identitas_kendaraan.dart';
import 'package:suranect/features/pajak_kendaraan/domain/entities/penul_5_tahunan.dart';
import 'package:suranect/features/pajak_kendaraan/domain/entities/penul_tahunan.dart';

part 'pajak_kendaraan.g.dart';

part 'pajak_kendaraan.freezed.dart';

@freezed
class PajakKendaraan with _$PajakKendaraan {
  const factory PajakKendaraan({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "Identitas_kendaraan") required IdentitasKendaraan identitasKendaraan,
    @JsonKey(name: "Penul_tahunan") required PenulTahunan penulTahunan,
    @JsonKey(name: "Penul_5_tahunan") required Penul5Tahunan penul5Tahunan,
    @JsonKey(name: "UpdatedAt") required String updatedAt,
    @JsonKey(name: "CreatedAt") required String createdAt,
}) = _PajakKendaraan;

  factory PajakKendaraan.fromJson(Map<String, dynamic> json) =>
      _$PajakKendaraanFromJson(json);
}
