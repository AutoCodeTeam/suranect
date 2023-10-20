import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/login/login_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/profile/profile_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register/register_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/data_sources/verify_otp/verify_otp_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_request.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_response.dart';
import 'package:suranect/features/auth/data/remote/models/profile/profile_response.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_response.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_request.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_response.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final RegistrationRemoteDataSource registrationRemoteDataSource;
  final LoginRemoteDataSource loginRemoteDataSource;
  final VerifyOtpRemoteDataSource verifyOtpRemoteDataSource;
  final ProfileRemoteDataSource profileRemoteDataSource;

  final AuthLocalDataSource authLocalDataSource;

  UserRepositoryImpl({
    required this.registrationRemoteDataSource,
    required this.loginRemoteDataSource,
    required this.authLocalDataSource,
    required this.verifyOtpRemoteDataSource,
    required this.profileRemoteDataSource,
  });

  @override
  Future<Either<Failure, RegisterResponse>> registerUser(
      RegisterRequest request) async {
    try {
      final response = await registrationRemoteDataSource.register(request);

      if (response is Success<RegisterResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<RegisterResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<RegisterResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> loginUser(LoginRequest request) async {
    try {
      final response = await loginRemoteDataSource.login(request);

      if (response is Success<LoginResponse>) {
        await authLocalDataSource.saveToken(response.data.token);

        return Right(response.data);
      } else if (response is ServerError<LoginResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }


      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(
      VerifyOtpRequest request) async {
    try {
      final response = await verifyOtpRemoteDataSource.verify(request);

      if (response is Success<VerifyOtpResponse>) {
        return Right(response.data);
      } else if (response is ServerError<VerifyOtpResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> getOtp() async {
    try {
      final response = await verifyOtpRemoteDataSource.getOtp();

      if (response is Success<VerifyOtpResponse>) {
        return Right(response.data);
      } else if (response is ServerError<VerifyOtpResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, ProfileResponse>> getProfile() async {
    try {
      final response = await profileRemoteDataSource.getProfile();

      if (response is Success<ProfileResponse>) {
        return Right(response.data);
      } else if (response is ServerError<ProfileResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
