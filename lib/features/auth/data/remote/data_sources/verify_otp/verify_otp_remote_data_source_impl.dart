import 'package:dio/dio.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/app/network/base/safe_call.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/verify_otp/verify_otp_remote_data_source.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_request.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_response.dart';

class VerifyOtpRemoteDataSourceImpl extends VerifyOtpRemoteDataSource {
  final AuthLocalDataSource authLocalDataSource;

  final Dio _dio = Dio()..interceptors.add(PrettyDioLogger());

  VerifyOtpRemoteDataSourceImpl({
    required this.authLocalDataSource,
  });

  @override
  Future<ApiResult<VerifyOtpResponse>> verify(VerifyOtpRequest request) async {
    final token = await authLocalDataSource.getToken();

    return await _dio.safePost("auth/verify_email", VerifyOtpResponse.fromJson,
        options: Options(
            method: "POST",
            contentType: Headers.jsonContentType,
            headers: {"Authorization": "Bearer $token"}),
        data: request.toJson());
  }

  @override
  Future<ApiResult<VerifyOtpResponse>> getOtp() async {
    final token = await authLocalDataSource.getToken();

    return await _dio.safeGet(
      "auth/send_verify_email",
      VerifyOtpResponse.fromJson,
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
  }
}
