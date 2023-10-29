import 'package:freezed_annotation/freezed_annotation.dart';

part 'pajak_pbb.g.dart';

part 'pajak_pbb.freezed.dart';

@freezed
class PajakPBB with _$PajakPBB {
  const factory PajakPBB({
    @JsonKey(name: "ID") int? id,
    @JsonKey(name: "Nop") String? nop,
    @JsonKey(name: "Letak_objek_pajak") LetakObjekPajak? letakObjekPajak,
    @JsonKey(name: "Alamat_wajib_pajak") AlamatWajibPajak? alamatWajibPajak,
    @JsonKey(name: "Njop_pbb_p2") int? njopPbbP2,
    @JsonKey(name: "Njoptkp") int? njoptkp,
    @JsonKey(name: "Njop") int? njop,
    @JsonKey(name: "Njkp") String? njkp,
    @JsonKey(name: "Pbb_yang_terhutang") String? pbbYangTerhutang,
    @JsonKey(name: "Jatuh_Tempo") String? jatuhTempo,
    @JsonKey(name: "Tempat_pembayaran") String? tempatPembayaran,
    @JsonKey(name: "CreatedAt") String? createdAt,
    @JsonKey(name: "UpdatedAt") String? updatedAt,
  }) = _PajakPBB;

  factory PajakPBB.fromJson(Map<String, dynamic> json) =>
      _$PajakPBBFromJson(json);
}

@freezed
class AlamatWajibPajak with _$AlamatWajibPajak {
  const factory AlamatWajibPajak({
    @JsonKey(name: "Atas_nama") String? atasNama,
    @JsonKey(name: "Alamat") String? alamat,
    @JsonKey(name: "RT") String? rt,
    @JsonKey(name: "RW") String? rw,
    @JsonKey(name: "Kelurahan") String? kelurahan,
    @JsonKey(name: "Kota") String? kota,
  }) = _AlamatWajibPajak;

  factory AlamatWajibPajak.fromJson(Map<String, dynamic> json) =>
      _$AlamatWajibPajakFromJson(json);
}

@freezed
class LetakObjekPajak with _$LetakObjekPajak {
  const factory LetakObjekPajak({
    @JsonKey(name: "Alamat") String? alamat,
    @JsonKey(name: "RT") String? rt,
    @JsonKey(name: "RW") String? rw,
    @JsonKey(name: "Kelurahan") String? kelurahan,
    @JsonKey(name: "Kecamatan") String? kecamatan,
    @JsonKey(name: "Kota") String? kota,
  }) = _LetakObjekPajak;

  factory LetakObjekPajak.fromJson(Map<String, dynamic> json) =>
      _$LetakObjekPajakFromJson(json);
}
