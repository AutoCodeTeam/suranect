import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/auth/data/remote/models/profile/profile_response.dart';

abstract class ProfileRemoteDataSource {
  Future<ApiResult<ProfileResponse>> getProfile();
}