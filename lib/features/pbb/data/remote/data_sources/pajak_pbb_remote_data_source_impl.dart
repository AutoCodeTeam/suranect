import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/pbb/data/remote/data_sources/pajak_pbb_remote_data_source.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_request.dart';
import 'package:suranect/features/pbb/data/remote/models/pajak_pbb_response.dart';

class PajakPBBRemoteDataSourceImpl extends PajakPBBRemoteDataSource {
  @override
  Future<ApiResult<PajakPbbResponse>> getPajakPBB(
      PajakPbbRequest request) async {
    final String jsonData =
        await rootBundle.loadString('assets/json/pajak_pbb.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => PajakPbbResponse.fromJson(data);

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
