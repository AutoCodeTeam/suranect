import 'package:dartz/dartz.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/laporan/data/remote/data_sources/laporan_remote_data_source.dart';
import 'package:suranect/features/laporan/data/remote/models/add_laporan_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_delete_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request_update.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_response.dart';
import 'package:suranect/features/laporan/domain/repositories/laporan_repository.dart';

class LaporanRepositoryImpl extends LaporanRepository {
  final LaporanRemoteDataSource laporanRemoteDataSource;

  LaporanRepositoryImpl({
    required this.laporanRemoteDataSource,
  });

  @override
  Future<Either<Failure, LaporanResponse>> getLaporans() async {
    try {
      final response = await laporanRemoteDataSource.getLaporans();

      if (response is Success<LaporanResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<LaporanResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<LaporanResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, AddLaporanResponse>> addLaporan(
      LaporanRequest request) async {
    try {
      final response = await laporanRemoteDataSource.addLaporan(request);

      if (response is Success<AddLaporanResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<AddLaporanResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<AddLaporanResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, LaporanDetailResponse>> getDetailLaporan(
      LaporanDetailRequest request) async {
    try {
      final response = await laporanRemoteDataSource.getDetailLaporan(request);

      if (response is Success<LaporanDetailResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<LaporanDetailResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<LaporanDetailResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, LaporanDeleteResponse>> deleteLaporan(
      LaporanDetailRequest request) async {
    try {
      final response = await laporanRemoteDataSource.deleteLaporan(request);

      if (response is Success<LaporanDeleteResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<LaporanDeleteResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<LaporanDeleteResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, LaporanDetailResponse>> updateLaporan(
      LaporanUpdateRequest request) async {
    try {
      final response = await laporanRemoteDataSource.updateLaporan(request);

      if (response is Success<LaporanDetailResponse>) {
        return Right(response.data);
      }

      if (response is ServerError<LaporanDetailResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      if (response is InternalError<LaporanDetailResponse>) {
        return Left(ApiFailure(error: response.errors.message));
      }

      return Left(
        ConnectionFailure(),
      );
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
