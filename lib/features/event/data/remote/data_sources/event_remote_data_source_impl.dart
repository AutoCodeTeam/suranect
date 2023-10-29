import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/event/data/remote/data_sources/event_remote_data_source.dart';
import 'package:suranect/features/event/data/remote/models/event_response.dart';

class EventRemoteDataSourceImpl extends EventRemoteDataSource {
  @override
  Future<ApiResult<EventResponse>> getEvents() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/event.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => EventResponse.fromJson(data);

    if (response['Status'] == "success") {
      return Success(mapper(response));
    } else if (response['Status'] == "errpr") {
      return ServerError(
          const ApiError(code: null, message: "Something Went Wrong"));
    } else {
      return InternalError();
    }
  }
}
