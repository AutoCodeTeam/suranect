import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/app/network/base/safe_call.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:suranect/features/laporan/data/remote/data_sources/laporan_remote_data_source.dart';
import 'package:suranect/features/laporan/data/remote/models/add_laporan_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_delete_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_response.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_request_update.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_response.dart';

// class LaporanRemoteDataSourceImpl extends LaporanRemoteDataSource{
//
//   final AuthLocalDataSource authLocalDataSource;
//
//   LaporanRemoteDataSourceImpl({
//     required this.authLocalDataSource,
//   });
//
//   @override
//   Future<ApiResult<AddLaporanResponse>> addLaporan(LaporanRequest request) {
//     // TODO: implement addLaporan
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<ApiResult<LaporanDeleteResponse>> deleteLaporan(LaporanDetailRequest request) {
//     // TODO: implement deleteLaporan
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<ApiResult<LaporanDetailResponse>> getDetailLaporan(LaporanDetailRequest request) async {
//     // TODO: implement deleteLaporan
//     throw UnimplementedError();
//   }
//
//
//   @override
//   Future<ApiResult<LaporanResponse>> getLaporans() async {
//     final String jsonData =
//     await rootBundle.loadString('assets/json/laporan.json');
//
//     final Map<String, dynamic> response = json.decode(jsonData);
//     mapper(data) => LaporanResponse.fromJson(data);
//
//     if (response['Status'] == "success") {
//       return Success(mapper(response));
//     } else if (response['Status'] == "errpr") {
//       return ServerError(
//           const ApiError(code: null, message: "Something Went Wrong"));
//     } else {
//       return InternalError();
//     }
//   }
//
//   @override
//   Future<ApiResult<LaporanDetailResponse>> updateLaporan(LaporanUpdateRequest request) {
//     // TODO: implement updateLaporan
//     throw UnimplementedError();
//   }
//
// }

class LaporanRemoteDataSourceImpl extends LaporanRemoteDataSource {
  final AuthLocalDataSource authLocalDataSource;

  final Dio _dio = Dio()..interceptors.add(PrettyDioLogger());

  LaporanRemoteDataSourceImpl({
    required this.authLocalDataSource,
  });

  @override
  Future<ApiResult<LaporanResponse>> getLaporans() async {
    final token = await authLocalDataSource.getToken();

    return await _dio.safeGet("laporan", LaporanResponse.fromJson,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ));
  }

  @override
  Future<ApiResult<AddLaporanResponse>> addLaporan(
      LaporanRequest request) async {
    final token = await authLocalDataSource.getToken();
    return await _dio.safePost(
      "laporan",
      AddLaporanResponse.fromJson,
      options: Options(
        method: "POST",
        headers: {"Authorization": "Bearer $token"},
      ),
      data: FormData.fromMap({
        "lokasi": request.lokasi,
        "permasalahan": request.permasalahan,
        "kategori": request.kategori,
        "lokasiSpesifik": request.lokasiSpesifik,
        "photo": request.photo,
      }),
    );
  }

  @override
  Future<ApiResult<LaporanDetailResponse>> getDetailLaporan(
      LaporanDetailRequest request) async {
    final token = await authLocalDataSource.getToken();

    return await _dio.safeGet(
        "laporan/${request.id}", LaporanDetailResponse.fromJson,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ));
  }

  @override
  Future<ApiResult<LaporanDeleteResponse>> deleteLaporan(
      LaporanDetailRequest request) async {
    final token = await authLocalDataSource.getToken();

    return await _dio.safeDelete(
        "laporan/${request.id}", LaporanDeleteResponse.fromJson,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ));
  }

  @override
  Future<ApiResult<LaporanDetailResponse>> updateLaporan(
      LaporanUpdateRequest request) async {
    final token = await authLocalDataSource.getToken();
    final Map<String,dynamic> jsonData = {
      if (request.lokasi != null) "lokasi": request.lokasi,
      if (request.permasalahan != null) "permasalahan": request.permasalahan,
      if (request.kategori != null) "kategori": request.kategori,
      if (request.lokasiSpesifik != null) "lokasiSpesifik": request.lokasiSpesifik,
    };

    return await _dio.safePatch(
      "laporan/${request.id}",
      LaporanDetailResponse.fromJson,
      options: Options(
        headers: {
          "Authorization": "Bearer ${token}",
        },
      ),
      data: request.photo != null ? FormData.fromMap({
        if (request.lokasi != null) "lokasi": request.lokasi,
        if (request.permasalahan != null) "permasalahan": request.permasalahan,
        if (request.kategori != null) "kategori": request.kategori,
        if (request.lokasiSpesifik != null) "lokasiSpesifik": request.lokasiSpesifik,
        "photo": request.photo,
      }) : jsonData,
    );
  }
}
