import 'package:freezed_annotation/freezed_annotation.dart';

part 'pajak_kendaraan_request.freezed.dart';

part 'pajak_kendaraan_request.g.dart';

@freezed
class PajakKendaraanRequest with _$PajakKendaraanRequest {
  const factory PajakKendaraanRequest({
    required String nopol,
  }) = _PajakKendaraanRequest;

  factory PajakKendaraanRequest.fromJson(Map<String, dynamic> json) =>
      _$PajakKendaraanRequestFromJson(json);
}
