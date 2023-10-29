import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/berita/data/remote/data_sources/berita_remote_data_source.dart';
import 'package:suranect/features/berita/data/remote/models/berita_response.dart';
import 'package:suranect/features/berita/domain/repositories/berita_repository.dart';

class BeritaRepositoryImpl extends BeritaRepository{
  final BeritaRemoteDataSource beritaRemoteDataSource;

  BeritaRepositoryImpl({
    required this.beritaRemoteDataSource,
  });

  @override
  Future<Either<Failure, BeritaResponse>> getBerita() async {
    try {
      final response =
      await beritaRemoteDataSource.getBerita();

      if (response is Success<BeritaResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<BeritaResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<BeritaResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(ConnectionFailure());
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

}