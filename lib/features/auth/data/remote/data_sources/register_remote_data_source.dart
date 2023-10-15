import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/auth/data/remote/models/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register_response.dart';

abstract class RegistrationRemoteDataSource {
  Future<ApiResult<RegisterResponse>> register(RegisterRequest request);
}