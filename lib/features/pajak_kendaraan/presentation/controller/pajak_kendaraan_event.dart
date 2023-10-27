part of 'pajak_kendaraan_bloc.dart';

@freezed
class PajakKendaraanEvent with _$PajakKendaraanEvent {
  const factory PajakKendaraanEvent.started({
    @Default("") String plat,
  }) = _Started;
}
