import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';

abstract class IntroRepository{
  Future<Either<Failure, bool>> doneIntro(bool status);
  Future<Either<Failure, bool>> isIntro();
}