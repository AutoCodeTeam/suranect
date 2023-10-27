import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_request.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_response.dart';

abstract class PajakKendaraanRepository {
  Future<Either<Failure, PajakKendaraanResponse>> getPajakKendaaraan(PajakKendaraanRequest request);
}