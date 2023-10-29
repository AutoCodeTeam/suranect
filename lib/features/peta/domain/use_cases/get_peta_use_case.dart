import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/peta/data/remote/models/peta_response.dart';
import 'package:suranect/features/peta/domain/repositories/peta_repository.dart';

class GetPetaUseCase extends BaseUseCase<PetaResponse> {
  final PetaRepository petaRepository;

  GetPetaUseCase({
    required this.petaRepository,
  });

  @override
  Future<Either<Failure, PetaResponse>> call()  async {
    return await petaRepository.getPeta();
  }
}
