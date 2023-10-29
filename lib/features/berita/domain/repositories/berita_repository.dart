import 'package:dartz/dartz.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/berita/data/remote/models/berita_response.dart';

abstract class BeritaRepository {
  Future<Either<Failure, BeritaResponse>> getBerita();
}