import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/event/data/remote/models/event_response.dart';

abstract class EventRepository {
  Future<Either<Failure, EventResponse>> getEvents();
}