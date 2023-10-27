import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_request.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_response.dart';

abstract class PajakPBBRepository {
  Future<Either<Failure, PajakPbbResponse>> getPajakPBB(
      PajakPbbRequest request);
}
