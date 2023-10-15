import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/remote/models/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register_response.dart';

abstract class UserRepository {
  Future<Either<Failure, RegisterResponse>> registerUser(RegisterRequest request);
}
