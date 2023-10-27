import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_request.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_response.dart';

abstract class PajakKendaraanRemoteDataSource {
  Future<ApiResult<PajakKendaraanResponse>> getPajakKendaraan(PajakKendaraanRequest request);
}