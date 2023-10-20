import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_request.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_response.dart';

abstract class VerifyOtpRemoteDataSource {
  Future<ApiResult<VerifyOtpResponse>> getOtp();
  Future<ApiResult<VerifyOtpResponse>> verify(VerifyOtpRequest request);
}