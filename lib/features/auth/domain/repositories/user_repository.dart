import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_request.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_response.dart';
import 'package:suranect/features/auth/data/remote/models/profile/profile_response.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_response.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_request.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_response.dart';

abstract class UserRepository {
  Future<Either<Failure, RegisterResponse>> registerUser(
      RegisterRequest request);

  Future<Either<Failure, LoginResponse>> loginUser(LoginRequest request);

  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(
      VerifyOtpRequest request);

  Future<Either<Failure, VerifyOtpResponse>> getOtp();

  Future<Either<Failure, ProfileResponse>> getProfile();
}
