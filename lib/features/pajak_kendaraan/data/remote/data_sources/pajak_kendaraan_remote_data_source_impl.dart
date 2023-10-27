import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/data_sources/pajak_kendaraan_remote_data_source.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_request.dart';
import 'package:suranect/features/pajak_kendaraan/data/remote/models/pajak_kendaraan_response.dart';

class PajakKendaraanRemoteDataSourceImpl
    extends PajakKendaraanRemoteDataSource {
  @override
  Future<ApiResult<PajakKendaraanResponse>> getPajakKendaraan(
      PajakKendaraanRequest request) async {
    final String jsonData =
        await rootBundle.loadString('assets/json/pajak_kendaraan.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => PajakKendaraanResponse.fromJson(data);

    if (response['Status'] == "success") {
      return Success(mapper(response));
    } else if (response['Status'] == "errpr") {
      return ServerError(
          const ApiError(code: null, message: "Something Went Wrong"));
    } else {
      return InternalError();
    }
  }
}
