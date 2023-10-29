import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/umkm/data/remote/data_sources/umkm_remote_data_source.dart';
import 'package:suranect/features/umkm/data/remote/models/umkm_response.dart';
import 'package:suranect/features/umkm/domain/repositories/umkm_repository.dart';

class UmkmRepositoryImpl extends UmkmRepository {
  final UmkmRemoteDataSource umkmRemoteDataSource;

  UmkmRepositoryImpl({
    required this.umkmRemoteDataSource,
  });

  @override
  Future<Either<Failure, UmkmResponse>> getUmkm() async {
    try {
      final response = await umkmRemoteDataSource.getUmkm();

      if (response is Success<UmkmResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<UmkmResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<UmkmResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
