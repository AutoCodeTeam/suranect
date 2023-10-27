import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/data_sources/pajak_kendaraan_remote_data_source.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_request.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_response.dart';
import 'package:suranect/features/pajak_kendaraan/domain/repositories/pajak_kendaraan_repository.dart';

class PajakKendaraanRepositoryImpl extends PajakKendaraanRepository {
  final PajakKendaraanRemoteDataSource pajakKendaraanRemoteDataSource;

  PajakKendaraanRepositoryImpl({
    required this.pajakKendaraanRemoteDataSource,
  });

  @override
  Future<Either<Failure, PajakKendaraanResponse>> getPajakKendaaraan(
      PajakKendaraanRequest request) async {
    try {
      final response =
          await pajakKendaraanRemoteDataSource.getPajakKendaraan(request);

      if (response is Success<PajakKendaraanResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<PajakKendaraanResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<PajakKendaraanResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
