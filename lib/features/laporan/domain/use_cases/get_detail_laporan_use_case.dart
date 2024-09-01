import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_response.dart';
import 'package:suranect/features/laporan/domain/repositories/laporan_repository.dart';

class GetDetailLaporanUseCase
    extends BaseUseCaseParam<LaporanDetailResponse, LaporanDetailRequest> {
  final LaporanRepository laporanRepository;

  GetDetailLaporanUseCase({
    required this.laporanRepository,
  });

  @override
  Future<Either<Failure, LaporanDetailResponse>> call(
      LaporanDetailRequest param) async {
    return await laporanRepository.getDetailLaporan(param);
  }
}
