import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_request.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<ApiResult<LoginResponse>> login(LoginRequest request);
}