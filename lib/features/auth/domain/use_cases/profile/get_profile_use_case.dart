import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/auth/data/remote/models/profile/profile_response.dart';
import 'package:suranect/features/auth/domain/repositories/user_repository.dart';

class GetProfileUseCase extends BaseUseCase<ProfileResponse> {
  final UserRepository userRepository;

  @override
  Future<Either<Failure, ProfileResponse>> call() async {
    return await userRepository.getProfile();
  }

  GetProfileUseCase({
    required this.userRepository,
  });
}
