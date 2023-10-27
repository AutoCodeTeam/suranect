part of 'lapor_cubit.dart';

@freezed
class LaporState with _$LaporState {
  const factory LaporState.process({
    @Default(null) XFile? image,
    @Default("") String location,
    @Default("") String specific,
    @Default("") String category,
    @Default("") String description,

  }) = _Initial;
}
