import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/event/data/remote/models/event_response.dart';
import 'package:suranect/features/event/domain/repositories/event_repository.dart';

class GetEventsUseCase extends BaseUseCase<EventResponse> {
  final EventRepository eventRepository;

  GetEventsUseCase({
    required this.eventRepository,
  });

  @override
  Future<Either<Failure, EventResponse>> call() async {
    return await eventRepository.getEvents();
  }
}
