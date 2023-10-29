import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/umkm/data/remote/models/umkm_response.dart';
import 'package:suranect/features/umkm/domain/repositories/umkm_repository.dart';

class GetUmkmUseCase extends BaseUseCase<UmkmResponse> {
  final UmkmRepository umkmRepository;

  GetUmkmUseCase({
    required this.umkmRepository,
  });

  @override
  Future<Either<Failure, UmkmResponse>> call() async {
    return await umkmRepository.getUmkm();
  }
}
