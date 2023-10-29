import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/umkm/data/remote/models/umkm_response.dart';

abstract class UmkmRepository{
  Future<Either<Failure, UmkmResponse>> getUmkm();
}