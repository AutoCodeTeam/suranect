import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/berita/data/remote/models/berita_response.dart';
import 'package:suranect/features/berita/domain/repositories/berita_repository.dart';

class GetBeritaUseCase extends BaseUseCase<BeritaResponse>{
  final BeritaRepository beritaRepository;

  GetBeritaUseCase({
    required this.beritaRepository
});

  @override
  Future<Either<Failure, BeritaResponse>> call() async {
  return await beritaRepository.getBerita();
  }
}