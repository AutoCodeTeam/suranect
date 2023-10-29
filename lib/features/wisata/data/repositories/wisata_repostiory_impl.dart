import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/wisata/data/remote/data_sources/wisata_remote_data_source.dart';
import 'package:suranect/features/wisata/data/remote/models/wisata_response.dart';
import 'package:suranect/features/wisata/domain/repositories/wisata_repository.dart';

class WisataRepositoryImpl extends WisataRepository {
  final WisataRemoteDataSource wisataRemoteDataSource;

  WisataRepositoryImpl({
    required this.wisataRemoteDataSource,
  });

  @override
  Future<Either<Failure, WisataResponse>> getWisata() async {
    try {
      final response = await wisataRemoteDataSource.getWisata();

      if (response is Success<WisataResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<WisataResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<WisataResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
