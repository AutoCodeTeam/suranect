import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/wisata/data/remote/models/wisata_response.dart';

abstract class WisataRemoteDataSource {
  Future<ApiResult<WisataResponse>> getWisata();
}