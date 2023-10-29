import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/event/data/remote/data_sources/event_remote_data_source.dart';
import 'package:suranect/features/event/data/remote/models/event_response.dart';
import 'package:suranect/features/event/domain/repositories/event_repository.dart';

class EventRepositoryImpl extends EventRepository {
  final EventRemoteDataSource eventRemoteDataSource;

  EventRepositoryImpl({
    required this.eventRemoteDataSource,
  });

  @override
  Future<Either<Failure, EventResponse>> getEvents() async {
    try {
      final response =
      await eventRemoteDataSource.getEvents();

      if (response is Success<EventResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<EventResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<EventResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
