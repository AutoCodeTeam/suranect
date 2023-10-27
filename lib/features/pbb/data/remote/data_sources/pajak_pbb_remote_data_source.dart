import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_request.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_response.dart';

abstract class PajakPBBRemoteDataSource {
  Future<ApiResult<PajakPbbResponse>> getPajakPBB(PajakPbbRequest request);
}