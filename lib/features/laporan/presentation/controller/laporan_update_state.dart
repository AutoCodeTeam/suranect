part of 'laporan_update_cubit.dart';

@freezed
class LaporanUpdateState with _$LaporanUpdateState {
  const factory LaporanUpdateState.process({
    @Default(null) XFile? image,
    @Default(TextFieldFormz.pure()) TextFieldFormz location,
    @Default(null) String? specific,
    @Default(TextFieldFormz.pure()) TextFieldFormz category,
    @Default(TextFieldFormz.pure()) TextFieldFormz description,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formStatus,
    @Default('') String exceptionError,
  }) = _Process;
}
