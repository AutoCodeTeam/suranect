import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/umkm/data/remote/data_sources/umkm_remote_data_source.dart';
import 'package:suranect/features/umkm/data/remote/models/umkm_response.dart';

class UmkmRemoteDataSourceImpl extends UmkmRemoteDataSource{
  @override
  Future<ApiResult<UmkmResponse>> getUmkm() async {
    final String jsonData =
    await rootBundle.loadString('assets/json/umkm.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => UmkmResponse.fromJson(data);

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