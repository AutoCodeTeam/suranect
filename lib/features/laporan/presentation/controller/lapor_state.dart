part of 'lapor_cubit.dart';

@freezed
class LaporState with _$LaporState {
  const factory LaporState.process({
    @Default(null) XFile? image,
    @Default(TextFieldFormz.pure()) TextFieldFormz location,
    @Default("") String specific,
    @Default(TextFieldFormz.pure()) TextFieldFormz category,
    @Default(TextFieldFormz.pure()) TextFieldFormz description,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formStatus,
    @Default(AddLaporanResponse(message: "", status: ""))
    AddLaporanResponse response,
    @Default('') String exceptionError,
  }) = _Initial;
}
