 import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/peta/data/remote/models/peta_response.dart';

abstract class PetaRepository{
  Future<Either<Failure, PetaResponse>> getPeta();
 }