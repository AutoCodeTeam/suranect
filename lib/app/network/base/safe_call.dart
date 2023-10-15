import 'package:dio/dio.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';

extension DioExtensions on Dio {
  Future<ApiResult<T>> safePost<T>(
      String path, T Function(Map<String, dynamic>) mapper,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final response = await post(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);

      print("iki $response");
      return ApiResult.fromResponse(response, mapper);
    } on DioException catch (exception) {
      return NetworkError(List.filled(
          1,
          ApiError(
            code: exception.response?.statusCode,
            message: exception.message ?? "",
          ),
          growable: false));
    }
  }
}
