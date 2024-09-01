import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/laporan/data/remote/models/add_laporan_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request.dart';
import 'package:suranect/features/laporan/domain/repositories/laporan_repository.dart';

class AddLaporanUseCase
    extends BaseUseCaseParam<AddLaporanResponse, LaporanRequest> {
  final LaporanRepository laporanRepository;

  AddLaporanUseCase({
    required this.laporanRepository,
  });

  @override
  Future<Either<Failure, AddLaporanResponse>> call(LaporanRequest param) async {
    return await laporanRepository.addLaporan(param);
  }
}
