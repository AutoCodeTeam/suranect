import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/event/data/remote/models/event_response.dart';

abstract class EventRemoteDataSource{
  Future<ApiResult<EventResponse>> getEvents();
}