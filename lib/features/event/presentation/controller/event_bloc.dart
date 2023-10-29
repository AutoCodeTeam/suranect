import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/event/domain/entities/event.dart';
import 'package:suranect/features/event/domain/use_cases/get_events_use_case.dart';

part 'event_event.dart';

part 'event_state.dart';

part 'event_bloc.freezed.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final GetEventsUseCase getEventsUseCase;

  EventBloc({
    required this.getEventsUseCase,
  }) : super(const EventState.initial()) {
    on<EventEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(const EventState.loading());
          try {
            final response = await getEventsUseCase.call();

            response.fold(
              (l) {
                final error =
                    l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";

                return emit(EventState.failure(error: error));
              },
              (r) {
                emit(
                  EventState.loaded(
                    events: r.data,
                  ),
                );
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
