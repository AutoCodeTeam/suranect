import 'package:dio/dio.dart';
import 'package:suranect/app/network/base/api_error.dart';

abstract class ApiResult<T> {
  static const String _jsonNodeErrors = "Status";

  static ApiResult<T> fromResponse<T>(
      Response response, T Function(Map<String, dynamic>) mapper) {
    final responseData = response.data;

    if (responseData[_jsonNodeErrors] == "success" || responseData[_jsonNodeErrors] == "euccess") {
      return Success(mapper(responseData));
    } else if (responseData[_jsonNodeErrors] == "error") {
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
  ApiError errors;

  Failed(this.errors);
}

class ServerError<T> extends Failed<T> {
  static const String _jsonNodeErrors = "Status";

  ServerError(ApiError errors) : super(errors);

  static ServerError<T> fromResponse<T>(Response response) {
    final responseData = response.data;

    // if (responseData[_jsonNodeErrors] == "Error" || responseData[_jsonNodeErrors] == "error") {
    //   return ServerError([ApiError(message: responseData["Message"], code: null)]);
    // } else {
    //   return ServerError([ApiError(message: responseData[_jsonNodeErrors], code: null)]);
    // }
    return ServerError(ApiError(message: responseData["Message"], code: null));
  }
}


class NetworkError<T> extends Failed<T> {
  NetworkError(ApiError errors) : super(errors);
}

class InternalError<T> extends Failed<T> {
  InternalError() : super(const ApiError(code: null, message: "Internal Error"));
}
