import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/peta/data/remote/models/peta_response.dart';

abstract class PetaRemoteDataSource{
  Future<ApiResult<PetaResponse>> getPeta();
}