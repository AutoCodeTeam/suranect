import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/laporan/data/remote/models/add_laporan_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_delete_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request_update.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_response.dart';

abstract class LaporanRepository {
  Future<Either<Failure, LaporanResponse>> getLaporans();
  Future<Either<Failure, AddLaporanResponse>> addLaporan(LaporanRequest request);
  Future<Either<Failure, LaporanDetailResponse>> getDetailLaporan(LaporanDetailRequest request);
  Future<Either<Failure, LaporanDeleteResponse>> deleteLaporan(LaporanDetailRequest request);
  Future<Either<Failure, LaporanDetailResponse>> updateLaporan(LaporanUpdateRequest request);
}
