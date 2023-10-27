import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_request.dart';
import 'package:suranect/features/pajak_kendaraan/domain/entities/pajak_kendaraan.dart';
import 'package:suranect/features/pajak_kendaraan/domain/use_cases/get_pajak_kendaraan_use_case.dart';

part 'pajak_kendaraan_event.dart';

part 'pajak_kendaraan_state.dart';

part 'pajak_kendaraan_bloc.freezed.dart';

class PajakKendaraanBloc
    extends Bloc<PajakKendaraanEvent, PajakKendaraanState> {
  final GetPajakKendaraanUseCase getPajakKendaraanUseCase;

  PajakKendaraanBloc({required this.getPajakKendaraanUseCase})
      : super(const PajakKendaraanState.initial()) {
    on<PajakKendaraanEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(const PajakKendaraanState.loading());
          try {
            if (value.plat.isEmpty)
              emit(const PajakKendaraanState.failure(
                  error: "Mohon Masukan Nopol anda!"));
            final response = await getPajakKendaraanUseCase.call(
              PajakKendaraanRequest(nopol: value.plat),
            );

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";

                return emit(PajakKendaraanState.failure(error: error));
              },
              (r) {
                try {
                  PajakKendaraan pajakKendaraan = r.data.firstWhere((element) =>
                  element.identitasKendaraan.nopol == value.plat);
                  return emit(
                    PajakKendaraanState.loaded(
                      pajakKendaraan: pajakKendaraan,
                    ),
                  );
                } catch (e) {
                  return emit(PajakKendaraanState.failure(error: e.toString()));
                }
              },
            );
          } on ConnectionException catch (error) {
            print(error);
          }
        },
      );
    });
  }
}
