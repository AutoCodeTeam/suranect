import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suranect/app/network/base/api_error.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/features/peta/data/remote/data_sources/peta_remote_data_source.dart';
import 'package:suranect/features/peta/data/remote/models/peta_response.dart';

class PetaRemoteDataSourceImpl extends PetaRemoteDataSource {
  @override
  Future<ApiResult<PetaResponse>> getPeta() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/peta.json');

    final Map<String, dynamic> response = json.decode(jsonData);
    mapper(data) => PetaResponse.fromJson(data);

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
