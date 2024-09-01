import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request_update.dart';
import 'package:suranect/features/laporan/domain/entities/text_field_formz.dart';
import 'package:suranect/features/laporan/domain/use_cases/update_laporan_use_case.dart';

part 'laporan_update_state.dart';

part 'laporan_update_cubit.freezed.dart';

class LaporanUpdateCubit extends Cubit<LaporanUpdateState> {
  final UpdateLaporanUseCase updateLaporanUseCase;

  LaporanUpdateCubit({
    required this.updateLaporanUseCase,
  }) : super(const LaporanUpdateState.process());

  void initial(String location, String category, String specific, String description) {
    emit(
      state.copyWith(
        location: TextFieldFormz.dirty(location),
        category: TextFieldFormz.dirty(category),
        specific: specific,
        description: TextFieldFormz.dirty(description),
      ),
    );
  }

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

  void submit({required int id}) async {
    emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));
    try {
      MultipartFile? imageMultipart;

      if (state.image != null) {
        imageMultipart = await MultipartFile.fromFile(
          state.image!.path,
          filename: state.image!.path.split('/').last,
        );
      }

      final response = await updateLaporanUseCase.call(
        LaporanUpdateRequest(
          id: id,
          photo: imageMultipart,
          permasalahan: state.description.value,
          lokasiSpesifik: state.specific,
          lokasi: state.location.value,
          kategori: state.category.value,
        ),
      );

      response.fold(
        (l) {
          final error =
              l.asOrNull<ApiError>()?.message ?? "Something Went Wrong!";

          emit(
            state.copyWith(
              formStatus: FormzSubmissionStatus.failure,
              exceptionError: error,
            ),
          );
        },
        (r) => emit(
          state.copyWith(
            formStatus: FormzSubmissionStatus.success,
            exceptionError: "",
          ),
        ),
      );
    } on ConnectionException catch (e) {
      emit(
        state.copyWith(
          formStatus: FormzSubmissionStatus.failure,
          exceptionError: e.toString(),
        ),
      );
    }
  }
}
