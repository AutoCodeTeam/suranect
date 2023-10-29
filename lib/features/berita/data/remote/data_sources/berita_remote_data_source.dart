import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/berita/data/remote/models/berita_response.dart';

abstract class BeritaRemoteDataSource {
  Future<ApiResult<BeritaResponse>> getBerita();
}