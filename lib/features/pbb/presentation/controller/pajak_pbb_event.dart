part of 'pajak_pbb_bloc.dart';

@freezed
class PajakPbbEvent with _$PajakPbbEvent {
  const factory PajakPbbEvent.started({
    @Default("") String nop,
  }) = _Started;
}
