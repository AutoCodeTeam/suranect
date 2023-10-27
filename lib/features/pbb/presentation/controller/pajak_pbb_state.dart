part of 'pajak_pbb_bloc.dart';

@freezed
class PajakPbbState with _$PajakPbbState {
  const factory PajakPbbState.initial() = _Initial;

  const factory PajakPbbState.loading() = _Loading;

  const factory PajakPbbState.loaded({
    required PajakPBB pajakPBB,
  }) = _Loaded;

  const factory PajakPbbState.failure({
    required String error,
  }) = _Failure;
}
