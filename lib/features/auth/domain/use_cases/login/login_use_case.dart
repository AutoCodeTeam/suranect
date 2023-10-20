import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_request.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_response.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';

class LoginUseCase extends BaseUseCaseParam<LoginResponse, LoginRequest> {
  final UserRepository userRepository;

  LoginUseCase({
    required this.userRepository,
  });

  @override
  Future<Either<Failure, LoginResponse>> call(LoginRequest param) async {
    return await userRepository.loginUser(param);
  }
}
