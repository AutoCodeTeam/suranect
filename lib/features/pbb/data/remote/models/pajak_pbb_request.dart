import 'package:freezed_annotation/freezed_annotation.dart';

part 'pajak_pbb_request.freezed.dart';

part 'pajak_pbb_request.g.dart';

@freezed
class PajakPbbRequest with _$PajakPbbRequest {
  const factory PajakPbbRequest({
    required String nop,
  }) = _PajakPbbRequest;

  factory PajakPbbRequest.fromJson(Map<String, dynamic> json) =>
      _$PajakPbbRequestFromJson(json);
}
