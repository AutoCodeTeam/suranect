import 'package:dio/dio.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/app/network/base/safe_call.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:suranect/features/auth/data/remote/data_sources/login/login_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_request.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_response.dart';

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final Dio _dio = Dio()
    ..interceptors.add(PrettyDioLogger());

  @override
  Future<ApiResult<LoginResponse>> login(LoginRequest request) async {
    return await _dio.safePost(
        "auth/login",
        LoginResponse.fromJson,
        options: Options(
          method: "POST",
          contentType: Headers.jsonContentType,
        ),
        data: request.toJson());
  }
}
