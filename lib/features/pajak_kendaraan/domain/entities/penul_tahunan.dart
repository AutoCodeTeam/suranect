import 'package:freezed_annotation/freezed_annotation.dart';

part 'penul_tahunan.g.dart';

part 'penul_tahunan.freezed.dart';

@freezed
class PenulTahunan with _$PenulTahunan {
  const factory PenulTahunan({
    @JsonKey(name: "Pkb") required int pkb,
    @JsonKey(name: "Progresif") required int progresif,
    @JsonKey(name: "Swdkllj") required int swdkllj,
    @JsonKey(name: "Parkir_langganan") required int parkirLangganan,
    @JsonKey(name: "Pengesahaan_stnk") required int pengesahaanStnk,
    @JsonKey(name: "Total_jumlah") required int totalJumlah,
  }) = _PenulTahunan;

  factory PenulTahunan.fromJson(Map<String, dynamic> json) =>
      _$PenulTahunanFromJson(json);
}
