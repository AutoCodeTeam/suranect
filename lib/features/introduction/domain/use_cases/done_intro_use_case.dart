import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/introduction/domain/repositories/intro_repository.dart';

class DoneIntroUseCase extends BaseUseCaseParam<bool, bool> {
  final IntroRepository introRepository;

  DoneIntroUseCase({required this.introRepository});

  @override
  Future<Either<Failure, bool>> call(bool param) async {
    return await introRepository.doneIntro(param);
  }
}
