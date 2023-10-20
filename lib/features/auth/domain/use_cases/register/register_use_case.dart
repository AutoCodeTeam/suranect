import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_response.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';

class RegisterUseCase extends BaseUseCaseParam<RegisterResponse, RegisterRequest> {
  final UserRepository userRepository;

  RegisterUseCase({
    required this.userRepository,
  });

  @override
  Future<Either<Failure, RegisterResponse>> call(RegisterRequest param) async {
    return await userRepository.registerUser(param);
  }
}
