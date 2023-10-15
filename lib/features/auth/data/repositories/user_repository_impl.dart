import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/remote/data_sources/register_remote_data_source.dart';
import 'package:suranect/features/auth/data/remote/models/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register_response.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final RegistrationRemoteDataSource registrationRemoteDataSource;

  UserRepositoryImpl({
    required this.registrationRemoteDataSource,
  });

  @override
  Future<Either<Failure, RegisterResponse>> registerUser(
      RegisterRequest request) async {
    try {
      final response = await registrationRemoteDataSource.register(request);

      if (response is Success<RegisterResponse>) {
        return Right(response.data);
      } else if(response is ServerError<RegisterResponse>){
        return Left(
          ApiFailure(error: response.errors)
        );
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
