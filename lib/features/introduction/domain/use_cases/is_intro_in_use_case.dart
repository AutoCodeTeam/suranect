import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/introduction/domain/repositories/intro_repository.dart';

class IsIntroInUseCase extends BaseUseCase<bool, DefaultParams> {
  final IntroRepository introRepository;

  IsIntroInUseCase({
    required this.introRepository,
  });

  @override
  Future<Either<Failure, bool>> call(DefaultParams param) async {
    return await introRepository.isIntro();
  }
}
