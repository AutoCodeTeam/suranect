import 'package:freezed_annotation/freezed_annotation.dart';

part 'penul_5_tahunan.freezed.dart';

part 'penul_5_tahunan.g.dart';

@freezed
class Penul5Tahunan with _$Penul5Tahunan {

  const factory Penul5Tahunan({
    @JsonKey(name: "Cetak_stnk") required int cetakStnk,
    @JsonKey(name: "Cetak_Tnkb") required int cetakTnkb,
}) = _Penul5Tahunan;

  factory Penul5Tahunan.fromJson(Map<String, dynamic> json) =>
      _$Penul5TahunanFromJson(json);
}
