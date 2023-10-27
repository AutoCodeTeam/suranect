import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/pbb/data/remote/data_sources/pajak_pbb_remote_data_source.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_request.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_response.dart';
import 'package:suranect/features/pbb/domain/repositories/pajak_pbb_repository.dart';

class PajakPBBRepositoryImpl extends PajakPBBRepository {
  final PajakPBBRemoteDataSource pajakPBBRemoteDataSource;

  @override
  Future<Either<Failure, PajakPbbResponse>> getPajakPBB(
      PajakPbbRequest request) async {
    try {
      final response = await pajakPBBRemoteDataSource.getPajakPBB(request);

      if (response is Success<PajakPbbResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<PajakPbbResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<PajakPbbResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  PajakPBBRepositoryImpl({
    required this.pajakPBBRemoteDataSource,
  });
}
