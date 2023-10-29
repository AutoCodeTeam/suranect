import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/wisata/domain/entities/wisata.dart';
import 'package:suranect/features/wisata/domain/use_cases/get_wisata_use_case.dart';

part 'wisata_event.dart';

part 'wisata_state.dart';

part 'wisata_bloc.freezed.dart';

class WisataBloc extends Bloc<WisataEvent, WisataState> {
  final GetWisataUseCase getWisataUseCase;

  WisataBloc({
    required this.getWisataUseCase,
  }) : super(const WisataState.initial()) {
    on<WisataEvent>(
      (event, emit) async {
        await event.map(
          started: (value) async {
            emit(const WisataState.loading());
            try {
              final response = await getWisataUseCase.call();

              response.fold(
                (l) {
                  final error =
                      l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";
                  return emit(
                    WisataState.failure(error: error),
                  );
                },
                (r) {
                  emit(WisataState.loaded(wisatas: r.data));
                },
              );
            } on ConnectionException catch (e) {
              emit(WisataState.failure(error: e.toString()));
            }
          },
        );
      },
    );
  }
}
