import 'package:freezed_annotation/freezed_annotation.dart';

part 'identitas_kendaraan.freezed.dart';

part 'identitas_kendaraan.g.dart';

@freezed
class IdentitasKendaraan with _$IdentitasKendaraan {
  const factory IdentitasKendaraan({
    @JsonKey(name: "Nopol") required String nopol,
    @JsonKey(name: "Warna") required String warna,
    @JsonKey(name: "Merek") required String merek,
    @JsonKey(name: "Model") required String model,
    @JsonKey(name: "Tipe") required String tipe,
    @JsonKey(name: "Tahun_pembuatan") required String tahunPembuatan,
    @JsonKey(name: "Masa_berlaku") required String masaBerlaku,
}) = _IdentitasKendaraan;

  factory IdentitasKendaraan.fromJson(Map<String, dynamic> json) =>
      _$IdentitasKendaraanFromJson(json);
}
