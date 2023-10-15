import 'package:dio/dio.dart';
import 'package:suranect/app/network/base/api_error.dart';

abstract class ApiResult<T> {
  static const String _jsonNodeErrors = "Status";

  static ApiResult<T> fromResponse<T>(
      Response response, T Function(Map<String, dynamic>) mapper) {
    final responseData = response.data;

    if (responseData[_jsonNodeErrors] == "Success") {
      return Success(mapper(responseData));
    } else if (responseData[_jsonNodeErrors] == "Error") {
      return ServerError.fromResponse(response);
    } else {
      return InternalError();
    }
  }
}

class Success<T> extends ApiResult<T> {
  final T data;

  Success(this.data);
}

class Failed<T> extends ApiResult<T> {
  List<ApiError> errors;

  Failed(this.errors);
}

class ServerError<T> extends Failed<T> {
  static const String _jsonNodeErrors = "Status";

  ServerError(List<ApiError> errors) : super(errors);

  static ServerError<T> fromResponse<T>(Response response) {
    final responseData = response.data;

    if (responseData[_jsonNodeErrors] == "Error") {
      return ServerError([ApiError(message: responseData["Message"], code: null)]);
    } else {
      return ServerError([ApiError(message: responseData[_jsonNodeErrors], code: null)]);
    }
  }
}


class NetworkError<T> extends Failed<T> {
  NetworkError(List<ApiError> errors) : super(errors);
}

class InternalError<T> extends Failed<T> {
  InternalError() : super(List.empty());
}
