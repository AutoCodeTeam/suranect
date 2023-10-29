import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/berita/data/remote/data_sources/berita_remote_data_source.dart';
import 'package:suranect/features/berita/data/remote/models/berita_response.dart';

class BeritaRemoteDataSourceImpl extends BeritaRemoteDataSource {
  @override
  Future<ApiResult<BeritaResponse>> getBerita() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/berita.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => BeritaResponse.fromJson(data);

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
