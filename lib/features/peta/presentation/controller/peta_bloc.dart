import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/event/domain/entities/event.dart';
import 'package:suranect/features/event/domain/use_cases/get_events_use_case.dart';
import 'package:suranect/features/peta/domain/entities/peta.dart';
import 'package:suranect/features/peta/domain/use_cases/get_peta_use_case.dart';

part 'peta_event.dart';

part 'peta_state.dart';

part 'peta_bloc.freezed.dart';

class PetaBloc extends Bloc<PetaEvent, PetaState> {
  final GetPetaUseCase getPetaUseCase;
  final GetEventsUseCase getEventUseCase;

  PetaBloc({
    required this.getPetaUseCase,
    required this.getEventUseCase,
  }) : super(const PetaState.initial()) {
    on<PetaEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          await loadDataAllAndEmit(emit);
        },
        changeCategory: (value) async {
          await loadDataAllAndEmit(emit, category: value.category);
        },
      );
    });
  }

  Future<void> loadDataAllAndEmit(Emitter<PetaState> emit,
      {String category = "Semua"}) async {
    emit(const PetaState.loading());
    try {
      List<Event> events = [];

      if (category != "Penutupan") {
        final responseEvents = await getEventUseCase.call();

        responseEvents.fold((l) {
          final error =
              l.asOrNull<ApiFailure>()?.error ?? "Something Went Wrong";

          return emit(PetaState.failure(error: error));
        }, (r) {
          events.addAll(r.data);
        });
      }

      if (category == "Event") {
        return emit(
          PetaState.loaded(
            events: events,
            category: category,
          ),
        );
      }

      final responsePeta = await getPetaUseCase.call();
      responsePeta.fold(
        (l) {
          final error =
              l.asOrNull<ApiFailure>()?.error ?? "Something Went Wrong";

          emit(PetaState.failure(error: error));
        },
        (r) {
          if (category == "Penutupan") {
            return emit(
              PetaState.loaded(
                petas: r.data,
                category: category,
              ),
            );
          }

          return emit(
            PetaState.loaded(
              petas: r.data,
              events: events,
              category: category,
            ),
          );
        },
      );
    } on ConnectionException catch (e) {
      print(e);
    }
  }
}
