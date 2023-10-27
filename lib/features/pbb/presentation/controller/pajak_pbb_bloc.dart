import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_request.dart';
import 'package:suranect/features/pbb/domain/entities/pajak_pbb.dart';
import 'package:suranect/features/pbb/domain/use_cases/get_pajak_pbb_use_case.dart';

part 'pajak_pbb_event.dart';

part 'pajak_pbb_state.dart';

part 'pajak_pbb_bloc.freezed.dart';

class PajakPbbBloc extends Bloc<PajakPbbEvent, PajakPbbState> {
  final GetPajakPbbUseCase getPajakPbbUseCase;

  PajakPbbBloc({
    required this.getPajakPbbUseCase,
  }) : super(const PajakPbbState.initial()) {
    on<PajakPbbEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(const PajakPbbState.loading());
          try {
            if (value.nop.isEmpty)
              emit(const PajakPbbState.failure(
                  error: "Mohon Masukan Nopol anda!"));
            final response = await getPajakPbbUseCase.call(
              PajakPbbRequest(nop: value.nop),
            );

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";

                return emit(PajakPbbState.failure(error: error));
              },
              (r) {
                try {
                  PajakPBB pajakPBB =
                      r.data.firstWhere((element) => element.nop == value.nop);

                  return emit(
                    PajakPbbState.loaded(
                      pajakPBB: pajakPBB,
                    ),
                  );
                } catch (e) {
                  return emit(PajakPbbState.failure(error: e.toString()));
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
