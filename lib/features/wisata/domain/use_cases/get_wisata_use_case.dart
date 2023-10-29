import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/wisata/data/remote/models/wisata_response.dart';
import 'package:suranect/features/wisata/domain/repositories/wisata_repository.dart';

class GetWisataUseCase extends BaseUseCase<WisataResponse> {
  final WisataRepository wisataRepository;

  GetWisataUseCase({
    required this.wisataRepository,
  });

  @override
  Future<Either<Failure, WisataResponse>> call() async {
    return await wisataRepository.getWisata();
  }
}
