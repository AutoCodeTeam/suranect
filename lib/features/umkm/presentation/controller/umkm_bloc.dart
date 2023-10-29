import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/umkm/domain/entities/umkm.dart';
import 'package:suranect/features/umkm/domain/use_cases/get_umkm_use_case.dart';

part 'umkm_event.dart';

part 'umkm_state.dart';

part 'umkm_bloc.freezed.dart';

class UmkmBloc extends Bloc<UmkmEvent, UmkmState> {
  final GetUmkmUseCase getUmkmUseCase;

  UmkmBloc({
    required this.getUmkmUseCase,
  }) : super(const UmkmState.initial()) {
    on<UmkmEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(const UmkmState.loading());
          try {
            final response = await getUmkmUseCase.call();

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";

                return emit(UmkmState.failure(error: error));
              },
              (r) => emit(UmkmState.loaded(umkm: r.data)),
            );
          } on ConnectionException catch (error) {
            print(error);
          }
        },
      );
    });
  }
}
