import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_request.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_response.dart';
import 'package:suranect/features/auth/domain/use_cases/verify_otp/get_otp_use_case.dart';
import 'package:suranect/features/auth/domain/use_cases/verify_otp/verify_otp_use_case.dart';

part 'verify_otp_state.dart';

part 'verify_otp_cubit.freezed.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  Timer? _timer;

  final VerifyUseCase verifyOtpUseCase;
  final GetOtpUseCase getOtpUseCase;

  VerifyOtpCubit({
    required this.verifyOtpUseCase,
    required this.getOtpUseCase,
  }) : super(const VerifyOtpState.initial());

  void getCode() async {

    emit(
      state.copyWith(
        sendAgain: const Duration(seconds: 60),
      ),
    );

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.sendAgain.inSeconds == 0) {
        timer.cancel();
      } else {
        emit(
          state.copyWith(
            sendAgain: Duration(seconds: state.sendAgain.inSeconds - 1),
          ),
        );
      }
    });

    final response = await getOtpUseCase.call(
      VerifyOtpRequest(code: state.otp),
    );
    response.fold(
      (l) => emit(state.copyWith(
        getOtpStatus: VerifyOtpStatus.failure,
      )),
      (r) => emit(
        state.copyWith(
          getOtpResponse: r,
          getOtpStatus: VerifyOtpStatus.success,
        ),
      ),
    );
  }

  void otpChanged(int value) {
    emit(
      state.copyWith(otp: value),
    );
  }

  void verifCode() async {
    if (state.otp < 4) {
      return emit(
        state.copyWith(error: "Mohon isi kode terlebih dahulu!"),
      );
    }

    emit(state.copyWith(verifyOtpStatus: VerifyOtpStatus.inProgess));

    final response = await verifyOtpUseCase.call(
      VerifyOtpRequest(code: state.otp),
    );

    response.fold(
      (l) {
        final error = l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";
        return emit(state.copyWith(
          error: error,
          verifyOtpStatus: VerifyOtpStatus.failure,
        ));
      },
      (r) {
        return emit(
          state.copyWith(
            response: r,
            verifyOtpStatus: VerifyOtpStatus.success,
          ),
        );
      },
    );
  }

  void refresh() {
    emit(const VerifyOtpState.initial());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
