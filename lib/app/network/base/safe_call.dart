import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';

extension DioExtensions on Dio {
  Future<ApiResult<T>> safeGet<T>(
    String path,
    T Function(Map<String, dynamic>) mapper, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await get(
        "${dotenv.get("API_URL")}/$path",
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      print("iki $response");
      return ApiResult.fromResponse(response, mapper);
    } on DioException catch (exception) {
      return NetworkError(ApiError(
        code: exception.response?.statusCode,
        message: exception.message ?? "",
      ));
    }
  }

  Future<ApiResult<T>> safePost<T>(
      String path, T Function(Map<String, dynamic>) mapper,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final response = await post(
        "${dotenv.get("API_URL")}/$path",
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      print("iki $response");
      return ApiResult.fromResponse(response, mapper);
    } on DioException catch (exception) {
      return NetworkError(ApiError(
          code: exception.response?.statusCode,
          message: exception.message ?? ""));
    }
  }

  Future<ApiResult<T>> safePatch<T>(
      String path, T Function(Map<String, dynamic>) mapper,
      {data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress}) async {
    try {
      final response = await patch(
        "${dotenv.get("API_URL")}/$path",
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      print("iki $response");
      return ApiResult.fromResponse(response, mapper);
    } on DioException catch (exception) {
      return NetworkError(ApiError(
          code: exception.response?.statusCode,
          message: exception.message ?? ""));
    }
  }

  Future<ApiResult<T>> safeDelete<T>(
      String path, T Function(Map<String, dynamic>) mapper,
      {data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress}) async {
    try {
      final response = await delete(
        "${dotenv.get("API_URL")}/$path",
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      print("iki $response");
      return ApiResult.fromResponse(response, mapper);
    } on DioException catch (exception) {
      return NetworkError(ApiError(
          code: exception.response?.statusCode,
          message: exception.message ?? ""));
    }
  }
}
