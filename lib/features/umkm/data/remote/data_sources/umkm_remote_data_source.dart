import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/umkm/data/remote/models/umkm_response.dart';

abstract class UmkmRemoteDataSource{
  Future<ApiResult<UmkmResponse>> getUmkm();
}