part of 'pajak_kendaraan_bloc.dart';

@freezed
class PajakKendaraanState with _$PajakKendaraanState {
  const factory PajakKendaraanState.initial() = _Initial;

  const factory PajakKendaraanState.loading() = _Loading;

  const factory PajakKendaraanState.loaded({
    required PajakKendaraan pajakKendaraan,
  }) = _Loaded;

  const factory PajakKendaraanState.failure({
    required String error,
  }) = _Failure;
}
