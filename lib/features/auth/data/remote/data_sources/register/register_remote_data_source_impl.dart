import 'package:dio/dio.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register/register_remote_data_source.dart';
import 'package:suranect/app/network/base/safe_call.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_request.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_response.dart';

class RegistrationRemoteDataSourceImpl extends RegistrationRemoteDataSource {
  final Dio _dio = Dio()..interceptors.add(PrettyDioLogger());

  @override
  Future<ApiResult<RegisterResponse>> register(RegisterRequest request) async {
    return await _dio.safePost(
        "auth/register",
        RegisterResponse.fromJson,
        options: Options(
          method: "POST",
          contentType: Headers.jsonContentType,
        ),
        data: request.toJson());
  }
}
