import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/laporan/data/remote/models/add_laporan_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_delete_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request_update.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_response.dart';

abstract class LaporanRemoteDataSource{
  Future<ApiResult<LaporanResponse>> getLaporans();
  Future<ApiResult<AddLaporanResponse>> addLaporan(LaporanRequest request);
  Future<ApiResult<LaporanDetailResponse>> getDetailLaporan(LaporanDetailRequest request);
  Future<ApiResult<LaporanDeleteResponse>> deleteLaporan(LaporanDetailRequest request);
  Future<ApiResult<LaporanDetailResponse>> updateLaporan(LaporanUpdateRequest request);
}