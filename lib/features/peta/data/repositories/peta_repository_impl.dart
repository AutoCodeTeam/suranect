import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/peta/data/remote/data_sources/peta_remote_data_source.dart';
import 'package:suranect/features/peta/data/remote/models/peta_response.dart';
import 'package:suranect/features/peta/domain/repositories/peta_repository.dart';

class PetaRepositoryImpl extends PetaRepository {
  final PetaRemoteDataSource petaRemoteDataSource;

  PetaRepositoryImpl({
    required this.petaRemoteDataSource,
  });

  @override
  Future<Either<Failure, PetaResponse>> getPeta() async {
    try {
      final response = await petaRemoteDataSource.getPeta();

      if (response is Success<PetaResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<PetaResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<PetaResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
