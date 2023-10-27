import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_request.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_response.dart';
import 'package:suranect/features/pajak_kendaraan/domain/repositories/pajak_kendaraan_repository.dart';

class GetPajakKendaraanUseCase
    extends BaseUseCaseParam<PajakKendaraanResponse, PajakKendaraanRequest> {
  final PajakKendaraanRepository pajakKendaraanRepository;

  GetPajakKendaraanUseCase({
    required this.pajakKendaraanRepository,
  });

  @override
  Future<Either<Failure, PajakKendaraanResponse>> call(
      PajakKendaraanRequest param) async {
    return await pajakKendaraanRepository.getPajakKendaaraan(param);
  }
}
