import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/domain/entities/laporan.dart';
import 'package:suranect/features/laporan/domain/use_cases/delete_laporan_use_case.dart';
import 'package:suranect/features/laporan/domain/use_cases/get_detail_laporan_use_case.dart';
import 'package:suranect/features/laporan/domain/use_cases/get_laporan_use_case.dart';

part 'laporan_event.dart';

part 'laporan_state.dart';

part 'laporan_bloc.freezed.dart';

class LaporanBloc extends Bloc<LaporanEvent, LaporanState> {
  final GetLaporanUseCase getLaporanUseCase;
  final GetDetailLaporanUseCase getDetailLaporanUseCase;
  final DeleteLaporanUseCase deleteLaporanUseCase;

  LaporanBloc({
    required this.getLaporanUseCase,
    required this.getDetailLaporanUseCase,
    required this.deleteLaporanUseCase,
  }) : super(const LaporanState.initial()) {
    on<LaporanEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(const LaporanState.loading());
          try {
            final response = await getLaporanUseCase.call();

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something Went Wrong!";

                emit(
                  LaporanState.failure(
                    error: error,
                  ),
                );
              },
              (r) => emit(
                LaporanState.loaded(
                  laporans: r.data,
                ),
              ),
            );
          } on ConnectionException catch (e) {
            emit(LaporanState.failure(error: e.toString()));
          }
        },
        showDetail: (value) async {
          emit(const LaporanState.loading());
          try {
            final response = await getDetailLaporanUseCase.call(value.request);

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something Went Wrong!";

                emit(
                  LaporanState.failure(
                    error: error,
                  ),
                );
              },
              (r) => emit(
                LaporanState.detail(
                  laporan: r.data,
                ),
              ),
            );
          } on ConnectionException catch (e) {
            emit(LaporanState.failure(error: e.toString()));
          }
        },
        delete: (value) async {
          emit(const LaporanState.loading());
          try {
            final response = await deleteLaporanUseCase.call(value.request);

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something Went Wrong!";

                emit(
                  LaporanState.failure(
                    error: error,
                  ),
                );
              },
              (r) {
                AppRouter.router.pop();
                add(const LaporanEvent.started());
              },
            );
          } on ConnectionException catch (e) {
            emit(LaporanState.failure(error: e.toString()));
          }
        },
      );
    });
  }
}
