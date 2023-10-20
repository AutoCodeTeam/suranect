import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/app/network/base/safe_call.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/profile/profile_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/models/profile/profile_response.dart';

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final AuthLocalDataSource authLocalDataSource;

  final Dio _dio = Dio()..interceptors.add(PrettyDioLogger());

  ProfileRemoteDataSourceImpl({
    required this.authLocalDataSource,
  });

  @override
  Future<ApiResult<ProfileResponse>> getProfile() async {
    final token = await authLocalDataSource.getToken();

    return await _dio.safeGet("auth/me", ProfileResponse.fromJson,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ));
  }
}
