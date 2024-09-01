import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request_update.dart';
import 'package:suranect/features/laporan/domain/repositories/laporan_repository.dart';

class UpdateLaporanUseCase extends BaseUseCaseParam<LaporanDetailResponse, LaporanUpdateRequest>{
  final LaporanRepository laporanRepository;

   UpdateLaporanUseCase({
    required this.laporanRepository,
  });

  @override
  Future<Either<Failure, LaporanDetailResponse>> call(LaporanUpdateRequest param) async {
    return await laporanRepository.updateLaporan(param);
  }
}