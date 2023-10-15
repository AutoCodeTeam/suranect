import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source.dart';
import 'package:suranect/features/introduction/domain/repositories/intro_repository.dart';

class IntroRepositoryImpl extends IntroRepository {
  final IntroLocalDataSource introLocalDataSoure;

  IntroRepositoryImpl({
    required this.introLocalDataSoure,
  });

  @override
  Future<Either<Failure, bool>> doneIntro(bool status) async{
    try{
      final response = await introLocalDataSoure.doneIntro(status);

      return Right(response);
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> isIntro() async {
    try{
      final response = await introLocalDataSoure.isIntro();
      return Right(response);
    } on ConnectionException {
      return Left(ConnectionFailure());
    }
  }
}
