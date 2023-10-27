import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/core/use_case/base_use_case.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_request.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_response.dart';
import 'package:suranect/features/pbb/domain/repositories/pajak_pbb_repository.dart';

class GetPajakPbbUseCase
    extends BaseUseCaseParam<PajakPbbResponse, PajakPbbRequest> {
  final PajakPBBRepository pajakPBBRepository;

  @override
  Future<Either<Failure, PajakPbbResponse>> call(PajakPbbRequest param) async {
    return await pajakPBBRepository.getPajakPBB(param);
  }

  GetPajakPbbUseCase({
    required this.pajakPBBRepository,
  });
}
