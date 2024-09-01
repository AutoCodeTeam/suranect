import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/laporan/data/remote/models/add_laporan_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request.dart';
import 'package:suranect/features/laporan/domain/entities/text_field_formz.dart';
import 'package:suranect/features/laporan/domain/use_cases/add_laporan_use_case.dart';

part 'lapor_state.dart';

part 'lapor_cubit.freezed.dart';

class LaporCubit extends Cubit<LaporState> {
  final AddLaporanUseCase addLaporanUseCase;

  LaporCubit({
    required this.addLaporanUseCase,
  }) : super(const LaporState.process());

  void imageChanged(XFile image) {
    emit(
      state.copyWith(image: image),
    );
  }

  void locationChanged(String value) {
    final valueString = TextFieldFormz.dirty(value);
    emit(
      state.copyWith(
        location: valueString,
        isValid: Formz.validate(
          [
            valueString,
            state.description,
            state.category,
          ],
        ),
      ),
    );
  }

  void descriptionChanged(String value) {
    final valueString = TextFieldFormz.dirty(value);
    emit(
      state.copyWith(
        description: valueString,
        isValid: Formz.validate(
          [
            state.location,
            valueString,
            state.category,
          ],
        ),
      ),
    );
  }

  void specificChanged(String value) {
    emit(
      state.copyWith(
        specific: value,
      ),
    );
  }

  void categoryChanged(String value) {
    final valueString = TextFieldFormz.dirty(value);

    emit(
      state.copyWith(
        category: valueString,
        isValid: Formz.validate(
          [
            state.location,
            state.description,
            valueString,
          ],
        ),
      ),
    );
  }

  void submit() async {
    emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));
    if (state.image != null &&
        state.category.error == null &&
        state.location.error == null &&
        state.description.error == null) {
      MultipartFile imageMultipart = await MultipartFile.fromFile(
        state.image!.path,
        filename: state.image!.path.split('/').last,
      );

      final response = await addLaporanUseCase.call(
        LaporanRequest(
          permasalahan: state.description.value ?? "",
          lokasi: state.location.value  ?? "",
          lokasiSpesifik: state.specific,
          kategori: state.category.value  ?? "",
          photo: imageMultipart,
        ),
      );

      response.fold(
        (l) {
          final error =
              l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";

          return emit(state.copyWith(
            exceptionError: error,
            formStatus: FormzSubmissionStatus.failure,
          ));
        },
        (r) => emit(
          state.copyWith(
            response: r,
            formStatus: FormzSubmissionStatus.success,
          ),
        ),
      );
    } else {
      return emit(
        state.copyWith(
          exceptionError: "",
          formStatus: FormzSubmissionStatus.failure,
        ),
      );
    }
  }
}
