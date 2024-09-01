import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_response.dart';
import 'package:suranect/features/laporan/domain/repositories/laporan_repository.dart';

class GetLaporanUseCase extends BaseUseCase<LaporanResponse> {
  final LaporanRepository laporanRepository;

  GetLaporanUseCase({
    required this.laporanRepository,
  });

  @override
  Future<Either<Failure, LaporanResponse>> call() async {
    return await laporanRepository.getLaporans();
  }
}
