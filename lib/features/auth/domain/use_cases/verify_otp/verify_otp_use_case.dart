import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_request.dart';
import 'package:suranect/features/auth/data/remote/models/verify_otp/verify_otp_response.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';

class VerifyUseCase extends BaseUseCaseParam<VerifyOtpResponse, VerifyOtpRequest> {
  final UserRepository userRepository;

  VerifyUseCase({
    required this.userRepository,
  });

  @override
  Future<Either<Failure, VerifyOtpResponse>> call(VerifyOtpRequest param) async {
    return await userRepository.verifyOtp(param);
  }
}
