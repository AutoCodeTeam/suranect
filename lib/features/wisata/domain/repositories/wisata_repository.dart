import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/wisata/data/remote/models/wisata_response.dart';

abstract class WisataRepository{
  Future<Either<Failure, WisataResponse>> getWisata();
}